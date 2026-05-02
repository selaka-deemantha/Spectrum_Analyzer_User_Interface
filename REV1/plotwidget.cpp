#include "plotwidget.h"
#include <QPainter>
#include <QResizeEvent>
#include <QDebug>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <algorithm>
#include <QRandomGenerator>
#include <cmath>


#include "appConfig.h"


bool rejectFlatSpikeFrame(QVector<float>& data,
                          int offset,
                          int fft_size,
                          float spikeThreshold,
                          float dB_threshold,
                          float N)
{
    if (fft_size <= 0) return false;
    bool hasSpike = false;

    for (int i = 0; i < fft_size; ++i)
    {
        if (data[offset + i] > spikeThreshold)
        {
            hasSpike = true;
            break;
        }
    }

    if (!hasSpike)
        return false;

    std::vector<float> topValues;
    topValues.reserve(fft_size);

    for (int i = 0; i < fft_size; ++i)
    {
        topValues.push_back(data[offset + i]);
    }

    std::sort(topValues.begin(), topValues.end(), std::greater<float>());

    if (topValues.size() > (size_t)N)
        topValues.resize(N);

    float minV = topValues[0];
    float maxV = topValues[0];

    for (float v : topValues)
    {
        if (v < minV) minV = v;
        if (v > maxV) maxV = v;
    }

    float spread = maxV - minV;

    bool isFlatSpike = (spread < dB_threshold);

    if (isFlatSpike)
    {
        for (int i = 0; i < fft_size; ++i)
        {
            data[offset + i] = -50.0f;
        }

        return true;
    }

    return false;
}



bool rejectJumpOrEdgeFrame(QVector<float>& data,
                           int offset,
                           int fft_size,
                           float dB_threshold,
                           float dB_scale)
{
    if (fft_size <= 1) return false;

    float first = data[offset];
    float last  = data[offset + fft_size - 1];

    if (first > -dB_scale || last > -dB_scale)
    {
        for (int i = 0; i < fft_size; ++i)
            data[offset + i] = -50.0f;

        return true;
    }

//    for (int i = 0; i < fft_size - 1; ++i)
//    {
//        float v1 = data[offset + i];
//        float v2 = data[offset + i + 1];

//        if (std::fabs(v1 - v2) > dB_threshold)
//        {
//            for (int j = 0; j < fft_size; ++j)
//                data[offset + j] = -50.0f;

//            return true;
//        }
//    }

    return false;
}






PlotWidget::PlotWidget(QWidget *parent) : QWidget(parent)
{
    rubberBand = new QRubberBand(QRubberBand::Rectangle, this);
    setMouseTracking(true);

    samplingMethod  = globalPlotSettings.samplingMethod;
    displayMode     = globalPlotSettings.displayMode;

    qRegisterMetaType<std::vector<float>>("std::vector<float>");
    qRegisterMetaType<uint32_t>("uint32_t");

    dmaWorker->moveToThread(dmaThread);

    connect(dmaThread, &QThread::finished, dmaWorker, &QObject::deleteLater);
    connect(dmaWorker, &DMAWorker::newFFTData, this, &PlotWidget::onNewFFTData);
    connect(this, &PlotWidget::frameProcessed, dmaWorker, &DMAWorker::allowNextFrame, Qt::QueuedConnection);
    connect(this, &PlotWidget::fftBoundsChanged, dmaWorker, &DMAWorker::setFFTBounds, Qt::QueuedConnection);
}

PlotWidget::~PlotWidget()
{
    dmaWorker->stop();
    dmaThread->quit();
    dmaThread->wait();
}

//------------------ Setters and Getters ---------------------//




void PlotWidget::startAcquisition(uint32_t minF, uint32_t maxF, uint32_t step)
{
    if (DEBUG_MSG) qDebug() << " Acquisition function is running ";

    minFreq = minF;
    maxFreq = maxF;
    stepSize = step;

    segments = (maxFreq - minFreq) / stepSize;
    if(segments <= 0) segments = 1;

    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) fft_size = 1;

    data.resize(fft_size * segments);
    data.fill(0.0f);
    viewStart = 0;
    viewEnd = data.size();
    currentStepIndex = 0;
    autosetEnabled = false;

    stabilityCount.resize(1000);
    stabilityCount.fill(0);

    avg_rounds = 0;

    avgData.resize(fft_size * segments);
    std::fill(avgData.begin(), avgData.end(), 0.0f);
    avg_count_1 = 0;

    if(!dmaThread->isRunning())
        dmaThread->start();
    QMetaObject::invokeMethod(dmaWorker, "start", Qt::QueuedConnection);
}

void PlotWidget::stopAcquisition()
{
    QMetaObject::invokeMethod(dmaWorker, "stop", Qt::QueuedConnection);
}

// Draw grid on background pixmap
void PlotWidget::generateGrid()
{
    if (width() <= 0 || height() <= 0) return;

    background = QPixmap(size());
    background.fill(Qt::black);

    QPainter p(&background);

    int w = width();
    int h = height();

    // Grid style
    p.setPen(QPen(QColor(90, 90, 90), 2));

    const int verticalDivs = 10;
    const int horizontalDivs = 8;

    // Vertical lines
    for (int i = 1; i < verticalDivs; ++i)
        p.drawLine(i * w / verticalDivs, 0, i * w / verticalDivs, h);

    // Horizontal lines
    for (int i = 1; i < horizontalDivs; ++i)
        p.drawLine(0, i * h / horizontalDivs, w, i * h / horizontalDivs);
}

void PlotWidget::yscaleUpdate()
{
    if(!autosetEnabled)
    {
        // Keep fixed Y-scale
        if(displayMode == dB) {

#if DB_DYNAMIC_RANGE
            maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
            minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
#else
            maxVal = DB_MAX_RANGE;
            minVal = DB_MIN_RANGE;

//            maxVal = 50;
//            minVal = -20;
#endif

        }
        else {
            maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
            minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);

              maxVal = 1e21;
              minVal = 0;
        }
        return;
    }

    // Autoset active → compute dynamic min/max
    if(viewEnd <= viewStart) return;

    maxVal = *std::max_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);
    minVal = *std::min_element(plotData->begin() + viewStart, plotData->begin() + viewEnd);

    if(maxVal - minVal < 1e-6f)
        maxVal = minVal + 1.0f;

    float margin = 0.05f * (maxVal - minVal); // 5% margin
    maxVal += margin;
    minVal -= margin;
}


void PlotWidget::paintEvent(QPaintEvent *)
{
    yscaleUpdate();

    QPainter painter(this);
    painter.drawPixmap(0,0,background);

    int leftMargin = 60;
    int bottomMargin = 30;

    float w = width() - leftMargin;
    float h = height() - bottomMargin;

      //segment divider lines //
//    if (showSegments && plotData != nullptr)
//    {

//        painter.setPen(QPen(QColor(120,120,120), 1, Qt::DashLine));

//        int totalPoints = plotData->size();
//        int numSegments = totalPoints / FFT_POINTS;

//        float w = width() - leftMargin;
//        float visiblePoints = viewEnd - viewStart;

//        for (int s = 0; s <= numSegments; ++s)
//        {
//            int idx = s * FFT_POINTS;

//            // Only draw visible ones
//            if (idx < viewStart || idx > viewEnd) continue;

//            float x = leftMargin + (idx - viewStart) * w / visiblePoints;

//            painter.drawLine(QPointF(x, 0), QPointF(x, height()));
//        }
//    }

    painter.setPen(QPen(Qt::green, 2));

    float range = maxVal - minVal;
    if(range < 0.0001f) range = 1.0f;

    int visiblePoints = viewEnd - viewStart;
    int pixelWidth = w;

    int step = 1;

    if(visiblePoints > pixelWidth)
        step = visiblePoints / pixelWidth;

    int safeEnd = std::min(viewEnd, (int)plotData->size());

    for(int i = viewStart; i < safeEnd - 1; ++i)
    {
        float x1 = leftMargin + (i - viewStart) * w / visiblePoints;
        float x2 = leftMargin + (i+1 - viewStart) * w / visiblePoints;

        float y1 = h - (((*plotData)[i]   - minVal)/range)*h;
        float y2 = h - (((*plotData)[i+1] - minVal)/range)*h;

        painter.drawLine(QPointF(x1,y1), QPointF(x2,y2));
    }

    painter.setPen(QPen(Qt::green, 2));

    // -------- Peak Detection --------

    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) fft_size = 1;

    std::unordered_map<int, std::pair<float, int>> maxPeakPerSegment;

    if (plotData != nullptr && plotData->size() >= 3) {
        int safeStart = std::max(1, viewStart);
        int safeEnd = std::min(viewEnd, static_cast<int>(plotData->size()) - 1);

        for (int i = safeStart; i < safeEnd; i++) {
            float val = (*plotData)[i];

            if (val > (*plotData)[i - 1] && val > (*plotData)[i + 1]) {

                int segmentIdx = i / fft_size;

                if (maxPeakPerSegment.find(segmentIdx) == maxPeakPerSegment.end() ||
                    val > maxPeakPerSegment[segmentIdx].first) {

                    maxPeakPerSegment[segmentIdx] = {val, segmentIdx};
                }
            }
        }
    }

    std::vector<std::pair<float, int>> peaks;
    peaks.reserve(maxPeakPerSegment.size());
    for (const auto& kv : maxPeakPerSegment) {
        peaks.push_back(kv.second);
    }

    int numPeaksToFind = std::min(3, static_cast<int>(peaks.size()));

    if (numPeaksToFind > 0) {
        std::partial_sort(peaks.begin(), peaks.begin() + numPeaksToFind, peaks.end(),
                  [](const std::pair<float, int>& a, const std::pair<float, int>& b) {
            return a.first > b.first;
        });
    }

    // -------- Draw the Peaks --------
    QList<float> topValues;
    QList<float> topAmplitudes;

    painter.setPen(Qt::yellow);
    painter.setFont(QFont("Arial", 15, QFont::Bold));

    for (int k = 0; k < numPeaksToFind; k++) {
        float val = peaks[k].first;
        int idx = peaks[k].second*fft_size;

        topValues.append(peaks[k].second);
        topAmplitudes.append(val);

        float px = leftMargin + static_cast<float>(idx - viewStart) * w / visiblePoints;
        float py = h - ((val - minVal) / range) * h;

        painter.drawText(QPointF(px, py - 10), QString::number(k + 1));
        painter.drawEllipse(QPointF(px, py), 3, 3);
    }

    emit peaksUpdated(topValues, topAmplitudes);

//    // -------- Peak Detection --------
//    std::vector<std::pair<float, int>> peaks;

//    if (plotData != nullptr && !plotData->empty()) {
//        peaks.reserve(viewEnd - viewStart);

//        for (int i = viewStart; i < viewEnd; i++) {
//            peaks.emplace_back((*plotData)[i], i);
//        }
//    }

//    std::sort(peaks.begin(), peaks.end(),
//              [](const std::pair<float,int>& a,const std::pair<float,int>& b){
//        return a.first > b.first;
//    });

//    QList<float> topValues;
//    QList<float> topAmplitudes;

//    painter.setPen(Qt::yellow);
//    painter.setFont(QFont("Arial",15,QFont::Bold));

//    for(int k=0;k<std::min(3,(int)peaks.size());k++){

//        float val = peaks[k].first;
//        int idx = peaks[k].second;

//        topValues.append(idx + fft_lower);
//        topAmplitudes.append(val);

//        float px = leftMargin + (idx - viewStart) * w / visiblePoints;
//        float py = h - ((val - minVal)/range)*h;

//        painter.drawText(QPointF(px,py-10),QString::number(k+1));
//        painter.drawEllipse(QPointF(px,py),3,3);
//    }

//    emit peaksUpdated(topValues, topAmplitudes);

    // -------- Horizontal Frequency Scale (Zoom Aware) --------
    painter.setPen(Qt::white);
    painter.setFont(QFont("Arial",10));

    int divisions = 5;

    float totalPoints = plotData->size();
    float freqPerPoint = (maxFreq - minFreq) / totalPoints;

    float visibleStartFreq = minFreq + viewStart * freqPerPoint;
    float visibleEndFreq   = minFreq + viewEnd   * freqPerPoint;

    for(int i=0;i<=divisions;i++)
    {
        float x = leftMargin + i * w / divisions;

        float freq = visibleStartFreq +
                     (i/(float)divisions) *
                     (visibleEndFreq - visibleStartFreq);

        painter.drawText(x-25,height()-5,
                         QString::number(freq,'f',2) + " MHz");
    }

    // -------- Vertical Amplitude Scale --------
    int vDivisions = 8;
    float dB_scale_start = -60.0f;
    float dB_scale_increment = 10.0f;

    for(int i = 0; i <= vDivisions; i++)
    {
        float y = h - (i * h / vDivisions);

        // calculate value in the current display mode
        float val;
        if(displayMode == dB) {
           // val = minVal + (i / (float)vDivisions) * (maxVal - minVal) - dB_scale_offset;
            dB_scale_start = dB_scale_start + dB_scale_increment;

            painter.drawText(5, y, QString::number(dB_scale_start, 'f', 1));
        }
        else { // linear
            val = minVal + (i / (float)vDivisions) * (maxVal - minVal);
            // use scientific notation if values are huge
            painter.drawText(5, y, QString::number(val, 'e', 2)); // e.g., 1.23e14
        }
    }

    // -------- Noise Floor Line --------
//    painter.setPen(QPen(Qt::red, 2, Qt::DashLine));

//    float noiseY = h - ((noiseFloorMean - minVal) / range) * h;

//    painter.drawLine(QPointF(leftMargin, noiseY), QPointF(leftMargin + w, noiseY));

}

// Regenerate grid when resized
void PlotWidget::resizeEvent(QResizeEvent *event)
{
    QWidget::resizeEvent(event);
    generateGrid();
}

void PlotWidget::onNewFFTData(float noiseSpread_dB, float noiseSpread_Li, float noiseFloor_dB, float noiseFloor_Li, uint32_t index, const std::vector<float>& fft)
{

    uint32_t plot_index                     = index % segments;
    float peak_threshold                    = noiseFloor_Li + alpha * noiseSpread_Li;
    int fft_size                            = fft_upper - fft_lower + 1;
    if (fft_size <= 0)                      fft_size = 1;
    int offset                              = plot_index * fft_size;
    if (offset + fft_size > data.size())    return;

    float alpha = 0.15f;

    for(int i = 0; i < fft_size; ++i) {
        float magnitude = fft[i];
        float value;
        int idx = offset + i;

        if(displayMode == dB) {

            if (dB_Reduction == 10){
              value = 10.0f * std::log10(magnitude + 1e-12f) - noiseFloor_dB + 50.0f - 168;
            }
            else {
                value = 10.0f * std::log10(magnitude + 1e-12f) - 168;
            }

         if (averagingEnabled) {
             if (avg_count_1 == 0){
                 avgData[idx] = value;
                 }
             else{
                 avgData[idx] = alpha * value + (1.0f - alpha) * avgData[idx];
                 }

            }
         else {
             avgData[idx] = value;

            }
        }
        else {
            value = magnitude;
            data[idx] = value;
        }
    }

//    if (displayMode == dB)
//    {
//        float offset_test = dB_scale_offset;
//        if (offset_test > fft_size) {
//            offset_test = fft_size;
//        }
//        bool rejected = rejectFlatSpikeFrame(
//            avgData,
//            offset,
//            fft_size,
//            -35.0f,                 // spike threshold
//            dB_Threshold,           // flat threshold (tune)
//            offset_test         // top N values
//        );

//        if (rejected)
//        {
//            // frame was bad → already replaced with -50 inside function
//        }
//    }

//    if (displayMode == dB)
//    {
//        float offset_test = dB_scale_offset;
//                if (offset_test > fft_size) {
//                    offset_test = fft_size;
//                }
//        rejectJumpOrEdgeFrame(avgData,
//                              offset,
//                              fft_size,
//                              0.0f,     // dB jump threshold
//                              offset_test);  // edge spike limit
//    }


    float threshold = -dB_scale_offset;

    for (int i = 0; i < fft_size; ++i)
    {
        int idx = offset + i;

        if (avgData[idx] > threshold)
            stabilityCount[i]++;   // active
        else
            stabilityCount[i]--;   // decay

        // clamp
        if (stabilityCount[i] < 0)
            stabilityCount[i] = 0;

        if (stabilityCount[i] > stabilityWindow)
            stabilityCount[i] = stabilityWindow;
    }

    int minStable = stabilityWindow / 2;

    for (int i = 0; i < fft_size; ++i)
    {
        int idx = offset + i;

        if (stabilityCount[i] < minStable && avgData[idx] >= threshold)
        {
            avgData[idx] = -50.0f;   // remove random spikes
        }
    }





    if(displayMode == dB) plotData = &avgData;
    else plotData = &data;


    update();

    if (displayMode == dB){
        if (plot_index == segments - 1) avg_count_1++;
    }

    emit frameProcessed();

currentStepIndex = (currentStepIndex + 1) % segments;
}





