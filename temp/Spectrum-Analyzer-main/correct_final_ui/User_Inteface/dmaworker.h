// dmaworker.h
#ifndef DMAWORKER_H
#define DMAWORKER_H

#include <QObject>
#include <QTimer>
#include <vector>

#define DEVICE_PATH "/dev/fft_dma"
#define NUM_SAMPLES 1024
#define FFT_POINTS 66

class DMAWorker : public QObject
{
    Q_OBJECT
public:
    explicit DMAWorker(QObject *parent = nullptr);

public slots:      // <-- Add this
    void start();
    void stop();

signals:
    void newFFTData(const std::vector<float>& fftData);

private slots:
    void readDMASamples();

private:
    QTimer* timer = nullptr;
    bool running = false;
};

#endif // DMAWORKER_H
