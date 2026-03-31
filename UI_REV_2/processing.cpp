#include "plotwidget.h"
#include <algorithm>
#include <QDebug>

#include "appConfig.h"

// ---------------- Normal Averaging ----------------

//void PlotWidget::onAveragingData() {
//    if (data.isEmpty()) return;

//    // Initialize averagedData if it's empty or size mismatch
//    if (averagedData.size() != data.size()) {
//        averagedData = data;   // start averaging with first sweep
//        avg_count = 1;
//        return;
//    }

//    // If we reached the desired number of averages, finalize
//    if (avg_count >= averaging_number) {
//        plotData = &averagedData;
//        update();
//        avg_count = 0;
//    }
//    else {
//        // Incremental averaging
//        for (int i = 0; i < data.size(); i++) {
//            averagedData[i] = (averagedData[i] * avg_count + data[i]) / (avg_count + 1);
//        }
//        avg_count++;
//    }
//}


// ---------------- Noise Floor Calculation ----------------

void PlotWidget::onAveragingData()
{
    if (data.isEmpty())
        return;

    // ----------------------------------------
    // Ensure plotData is valid and sized
    // ----------------------------------------
    if (!plotData)
        return;

    plotData->resize(data.size());

    // ----------------------------------------
    // Step 1: Sort to estimate noise floor
    // ----------------------------------------
    QVector<float> sortedData = data;
    std::sort(sortedData.begin(), sortedData.end());

    int cutoffIndex = sortedData.size() / 2;

    float noiseSum = 0.0f;
    for (int i = 0; i < cutoffIndex; ++i)
        noiseSum += sortedData[i];

    noiseFloorMean = noiseSum / cutoffIndex;

    // ----------------------------------------
    // Step 2: Apply thresholding
    // ----------------------------------------

    for (int i = 0; i < data.size(); i++)
    {
        if (data[i] > noiseFloorMean + noise_theshold)
            (*plotData)[i] = data[i];         // keep spikes
        else
            (*plotData)[i] = noiseFloorMean;  // flatten noise
    }

    // ----------------------------------------
    // Step 3: Trigger UI redraw
    // ----------------------------------------
    update();
}



//void PlotWidget::onAveragingData()
//{
//    if(data.isEmpty())
//        return;

//    QVector<float> frame = data;
//    QVector<float> sortedFrame = frame;
//    std::sort(sortedFrame.begin(), sortedFrame.end());

//    int cutoffIndex = sortedFrame.size() / 2;
//    float noiseSum = 0.0f;
//    for(int i = 0; i < cutoffIndex; ++i)
//        noiseSum += sortedFrame[i];

//    float robustMean = noiseSum / cutoffIndex;

//    qDebug() << "Noise mean : " << robustMean;

//    // --- Step 2: Threshold frame for plotting ---
//    QVector<float> thresholdedFrame(frame.size());
//    for(int i = 0; i < frame.size(); i++) {
//        if(frame[i] > robustMean)
//            thresholdedFrame[i] = frame[i];  // keep spikes
//        else
//            thresholdedFrame[i] = 0.0f;      // zero below noise floor
//    }

//    // --- Step 3: Initialize or update averagedData with thresholded frame ---
//    if(averagedData.isEmpty()) {
//        averagedData = thresholdedFrame;  // first frame
//        avg_count = 1;
//    } else {
//        int n = std::min(avg_count + 1, averaging_number);

//        for(int i = 0; i < thresholdedFrame.size(); i++) {
//            // Incremental average with thresholded values
//            averagedData[i] = (averagedData[i] * (n - 1) + thresholdedFrame[i]) / n;
//        }

//        avg_count = n;

//        if(avg_count == averaging_number) {
//            plotData = &averagedData;
//            update();
//            avg_count = 0;
//        }
//    }
//}









//void PlotWidget::onAveragingData()
//{

//#if DEBUG_MSG
//    qDebug() << "Inside the Averaging function";
//#endif

//    if(averagedData.isEmpty()) {

//        averagedData.resize(data.size());
//        for(int i = 0; i < data.size(); i++) {
//            averagedData[i] = data[i];
//#if DEBUG_MSG
//            qDebug() << "Averaging cformula first." << data[i];
//#endif
//        }

//        avg_count = 1;
//    }
//    else {

//        int n = std::min(avg_count+1, averaging_number);

//        for(int i = 0; i < data.size(); i++) {
//#if DEBUG_MSG
//            qDebug() << "Averaging cformula prev." << averagedData[i] << avg_count << data[i];
//#endif
//            averagedData[i] =
//                (averagedData[i] * (n - 1) + data[i]) / n;
//#if DEBUG_MSG
//            qDebug() << "Averaging cformula post." << averagedData[i] << avg_count << data[i];
//#endif
//        }

//        avg_count = n;
//        if(avg_count == averaging_number)
//        {
//#if DEBUG_MSG
//            qDebug() << "Averaging complete. Updating display." << averagedData[0];
//#endif
//            plotData = &averagedData;
//            update();
//            //averagedData.clear();
//            avg_count = 0;

//        }
//    }
//}

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


