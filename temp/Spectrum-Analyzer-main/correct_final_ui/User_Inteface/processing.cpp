#include "plotwidget.h"
#include <algorithm>
#include <QDebug>

// ---------------- Averaging ----------------

void PlotWidget::onAveragingData()
{
    if(averagedData.isEmpty()) {

        averagedData.resize(data.size());
        for(int i = 0; i < data.size(); i++) {
            averagedData[i] = data[i];
//        qDebug() << "Averaging cformula first." << data[i];
        }

        avg_count = 1;
    }
    else {

        int n = std::min(avg_count+1, averaging_number);

        for(int i = 0; i < data.size(); i++) {
//            qDebug() << "Averaging cformula prev." << averagedData[i] << avg_count << data[i];
            averagedData[i] =
                (averagedData[i] * (n - 1) + data[i]) / n;
//            qDebug() << "Averaging cformula post." << averagedData[i] << avg_count << data[i];
        }

        avg_count = n;
        if(avg_count == averaging_number)
        {
//            qDebug() << "Averaging complete. Updating display." << averagedData[0];
            plotData = &averagedData;
            averagedData.clear();
            update();
        }
    }
}

//// ---------------- Downsample ----------------

//void PlotWidget::downsampleSweep()
//{
//    if(sweepBuffer.isEmpty()) return;

//    int totalBins = sweepBuffer.size();
//    float ratio = totalBins / float(FFT_POINTS);

//    for(int i=0;i<FFT_POINTS;++i) {
//        int start = i*ratio;
//        int end = (i+1)*ratio;
//        if(end>totalBins) end = totalBins;

//        if(samplingMethod==MaxPooling) {
//            float maxVal = 0;
//            for(int j=start;j<end;++j)
//                maxVal = std::max(maxVal, sweepBuffer[j]);
//            data[i] = maxVal;
//        }
//        else {
//            float sum=0;
//            int count=0;
//            for(int j=start;j<end;++j){
//                sum+=sweepBuffer[j];
//                count++;
//            }
//            data[i] = (count>0) ? sum/count : 0;
//        }
//    }
//}

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

// averaging setters
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

// ---------------- Getters ----------------
bool PlotWidget::getAveragingEnabled() const { return averagingEnabled;}
int PlotWidget::getAveragingNumber() const { return averaging_number;}
int PlotWidget::getAverageCount() const { return avg_count;}


