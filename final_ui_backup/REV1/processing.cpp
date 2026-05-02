#include "plotwidget.h"
#include <algorithm>
#include <QDebug>
#include <QPainter>
#include <QPen>
#include <QPointF>

#include "appConfig.h"


// ---------------- Frame Peak Detection -----------

int PlotWidget::PeakSearch(){

}




// ---------------- Normal Averaging ----------------

void PlotWidget::NormalAveraging() {
    if (DEBUG_MSG) qDebug() << "Normal averaging algo running";
    if (data.isEmpty()) return;

    if (!plotData) return;

    for (int i = 0; i < data.size(); i++){
        (*plotData)[i] = ((*plotData)[i] * avg_number + data[i]) / (avg_number + 1);
    }

    avg_number++;

}


// ---------------- Noise Floor Threshold Averaging ----------------

void PlotWidget::ThresholdAveraging()
{
    if (DEBUG_MSG) qDebug() << "Noise Floor Threshold averaging algo running";
    if (data.isEmpty()) return;

    if (!plotData) return;

    plotData->resize(data.size());
    QVector<float> sortedData = data;
    std::sort(sortedData.begin(), sortedData.end());

    int cutoffIndex = sortedData.size() / 2;

    float noiseSum = 0.0f;
    for (int i = 0; i < cutoffIndex; ++i)
        noiseSum += sortedData[i];

    noiseFloorMean = noiseSum / cutoffIndex;
    for (int i = 0; i < data.size(); i++)
    {
        if (data[i] > noiseFloorMean + noise_theshold)
            (*plotData)[i] = data[i];         // keep spikes
        else
            (*plotData)[i] = noiseFloorMean;  // flatten noise
    }
    update();
}




// ---------------- Segment Based Averaging ----------------

void PlotWidget::SegmentThresholdAveraging()
{
    if (DEBUG_MSG) qDebug() << "Segment based averaging algo running";
    if (data.isEmpty()) return;
    if (!plotData) return;

    plotData->resize(data.size());

    for (int seg = 0; seg < segments; ++seg)
    {
        int startIdx = seg * FFT_POINTS;
        int endIdx = startIdx + FFT_POINTS;

        QVector<float> segmentData;
        segmentData.reserve(FFT_POINTS);
        for (int i = startIdx; i < endIdx; ++i)
            segmentData.append(data[i]);

        std::sort(segmentData.begin(), segmentData.end());
        int cutoffIndex = segmentData.size() / 2;

        float noiseSum = 0.0f;
        for (int i = 0; i < cutoffIndex; ++i)
            noiseSum += segmentData[i];

        float segmentNoiseFloor = noiseSum / cutoffIndex;

        //Apply threshold: flatten values below noise + threshold
        for (int i = startIdx; i < endIdx; ++i)
        {
            if (data[i]<= segmentNoiseFloor) {
                (*plotData)[i] = 0.0f;
            }
            else {
                if (data[i] > segmentNoiseFloor + noise_theshold){
                    (*plotData)[i] = data[i] - segmentNoiseFloor;
                }
                else {
                    (*plotData)[i] = 0.0f;
                }

            }
        }
    }

    update();
}



//// ---------------- Downsample ----------------

float PlotWidget::downsampleSweep(int start, int step)
{
    if(samplingMethod == MaxPooling)
    {
        float maxVal = data[start];

        for(int j = 1; j < step && (start + j) < viewEnd; j++)
            maxVal = std::max(maxVal, data[start + j]);

        return maxVal;
    }
    else // AveragePooling
    {
        float sum = 0;
        int count = 0;

        for(int j = 0; j < step && (start + j) < viewEnd; j++)
        {
            sum += data[start + j];
            count++;
        }

        return (count > 0) ? sum / count : 0;
    }
}


// -----------------Cursor signals----------

void PlotWidget::setHCursor1Enabled(bool en) { hCursor1Enabled = en; update(); emit cursorPositionsUpdated();}
void PlotWidget::setHCursor2Enabled(bool en) { hCursor2Enabled = en; update(); emit cursorPositionsUpdated();}
void PlotWidget::setVCursor1Enabled(bool en) { vCursor1Enabled = en; update(); emit cursorPositionsUpdated();}
void PlotWidget::setVCursor2Enabled(bool en) { vCursor2Enabled = en; update(); emit cursorPositionsUpdated();}

void PlotWidget::moveHCursor1(float val) { hCursor1Pos = val; update(); }
void PlotWidget::moveHCursor2(float val) { hCursor2Pos = val; update(); }
void PlotWidget::moveVCursor1(float val) { vCursor1Pos = val; update(); }
void PlotWidget::moveVCursor2(float val) { vCursor2Pos = val; update(); }

float PlotWidget::getHCursor1Pos() const { return hCursor1Pos; }
float PlotWidget::getHCursor2Pos() const { return hCursor2Pos; }
float PlotWidget::getVCursor1Pos() const { return vCursor1Pos; }
float PlotWidget::getVCursor2Pos() const { return vCursor2Pos; }

void PlotWidget::drawCursors(QPainter &painter, float leftMargin, float w, float h)
{
    painter.setPen(QPen(Qt::red, 2, Qt::DashLine));

    // Map dial (0–1000) → screen coordinates
    auto mapY = [&](float val){
        return (1.0f - val / 1000.0f) * h;
    };

    auto mapX = [&](float val){
        return leftMargin + (val / 1000.0f) * w;
    };

    // -------- Horizontal Cursors --------
    if (hCursor1Enabled) {
        float y = mapY(hCursor1Pos);
        painter.drawLine(QPointF(leftMargin, y), QPointF(leftMargin + w, y));
    }

    if (hCursor2Enabled) {
        float y = mapY(hCursor2Pos);
        painter.drawLine(QPointF(leftMargin, y), QPointF(leftMargin + w, y));
    }

    // -------- Vertical Cursors --------
    if (vCursor1Enabled) {
        float x = mapX(vCursor1Pos);
        painter.drawLine(QPointF(x, 0), QPointF(x, h));
    }

    if (vCursor2Enabled) {
        float x = mapX(vCursor2Pos);
        painter.drawLine(QPointF(x, 0), QPointF(x, h));
    }
}


// ---------------- Setters ----------------
void PlotWidget::setDownSamplingMethod(DownSamplingMethod source)
{
    samplingMethod = source;
    globalPlotSettings.samplingMethod = source;
}

void PlotWidget::selectOutputDisplayMode(DisplayMethod source)
{
    displayMode = source;
    globalPlotSettings.displayMode = source;
}

void PlotWidget::setAveragingEnabled(bool enable)
{
    averagingEnabled = enable;
    averagedData.clear();
    avg_count = 0;
}

void PlotWidget::setAveragingNumber(int number)
{
    averaging_number = number;
    averagedData.clear();
    avg_count = 0;
}

void PlotWidget::setAutosetEnabled(bool enable)
{
    autosetEnabled = enable;
    update(); // trigger redraw immediately
}

void PlotWidget::setNoiseThreshold(float noise_thresh_val){
    noise_theshold = noise_thresh_val;
}

void PlotWidget::setAlpha(int alpha_val){
    alpha = alpha_val;
}

void PlotWidget::setFFTLower(int fft_lower_temp){
    fft_lower = fft_lower_temp;
    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) fft_size = 1;
    if (segments > 0) {
        data.resize(fft_size * segments);
        data.fill(0.0f);
        viewEnd = data.size();
    }
    emit fftBoundsChanged(fft_lower, fft_upper);
}

void PlotWidget::setFFTUpper(int fft_upper_temp){
    fft_upper = fft_upper_temp;
    int fft_size = fft_upper - fft_lower + 1;
    if (fft_size <= 0) fft_size = 1;
    if (segments > 0) {
        data.resize(fft_size * segments);
        data.fill(0.0f);
        viewEnd = data.size();
    }
    emit fftBoundsChanged(fft_lower, fft_upper);
}

void PlotWidget::setdBThreshold(float dB_thresh){
    dB_Threshold = dB_thresh;
}

void PlotWidget::setdBReduction(float dB_redu){
    dB_Reduction = dB_redu;
}

void PlotWidget::setdBScale(float dB_scale_in){
    dB_scale_offset = dB_scale_in;
}

void PlotWidget::setPreAmp(bool pre_amp_en_in){
    pre_amp_en = pre_amp_en_in;
}

void PlotWidget::setSweepDelay(int sweep_delay_in){
    sweep_delay = sweep_delay_in;
    emit sweepDelaySet(sweep_delay);
}

// ---------------- Getters ----------------
bool PlotWidget::getAveragingEnabled() const { return averagingEnabled;}
int PlotWidget::getAveragingNumber() const { return averaging_number;}
int PlotWidget::getAverageCount() const { return avg_count;}
float PlotWidget::getNoiseThreshold() const { return noise_theshold;}
int PlotWidget::getAlpha() const { return alpha;}
int PlotWidget::getFFTLower() const { return fft_lower;}
int PlotWidget::getFFTUpper() const { return fft_upper;}
float PlotWidget::getdBThreshold() const { return dB_Threshold;}
float PlotWidget::getdBReduction() const { return dB_Reduction;}
float PlotWidget::getdBScale() const { return dB_scale_offset;}
bool PlotWidget::getPreAmp() const { return pre_amp_en;}
int PlotWidget::getSweepDelay() const { return sweep_delay; }



