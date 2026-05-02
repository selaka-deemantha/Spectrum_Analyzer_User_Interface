// dmaworker.h
#ifndef DMAWORKER_H
#define DMAWORKER_H

#include <QObject>
#include <QTimer>
#include <vector>



class DMAWorker : public QObject
{
    Q_OBJECT
public:
    explicit DMAWorker(QObject *parent = nullptr);

public slots:
    void start();
    void stop();
    void allowNextFrame();
    void setFFTBounds(int lower, int upper);

signals:
    //void newFFTData(uint32_t index, const std::vector<float>& fftData);
    void newFFTData(float noiseSpread_dB, float noiseSpread_Li, float noiseFloor_dB, float noiseFloor_Li, uint32_t index, const std::vector<float>& fftData);

private slots:
    void readDMASamples();

private:
    QTimer* timer = nullptr;
    bool running = false;
    int fd = -1;
    bool readyForNext = true;

    int fft_lower = 25;
    int fft_upper = 89;


};

#endif // DMAWORKER_H
