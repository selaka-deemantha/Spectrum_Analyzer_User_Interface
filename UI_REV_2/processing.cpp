#include "plotwidget.h"
#include <algorithm>
#include <QDebug>

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
    emit fftBoundsChanged(fft_lower, fft_upper);
}

void PlotWidget::setFFTUpper(int fft_upper_temp){
    fft_upper = fft_upper_temp;
    emit fftBoundsChanged(fft_lower, fft_upper);
}


// ---------------- Getters ----------------
bool PlotWidget::getAveragingEnabled() const { return averagingEnabled;}
int PlotWidget::getAveragingNumber() const { return averaging_number;}
int PlotWidget::getAverageCount() const { return avg_count;}
float PlotWidget::getNoiseThreshold() const { return noise_theshold;}
int PlotWidget::getAlpha() const { return alpha;}
int PlotWidget::getFFTLower() const { return fft_lower;}
int PlotWidget::getFFTUpper() const { return fft_upper;}

