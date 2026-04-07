// dmaworker.cpp
#include "dmaworker.h"
#include <fcntl.h>
#include <unistd.h>
#include <QDebug>
#include <cmath>
#include <QRandomGenerator>
#include <QFile>
#include <QTextStream>
#include <QString>

DMAWorker::DMAWorker(QObject *parent) : QObject(parent)
{
}

void DMAWorker::start()
{
    if (running) return;
    running = true;

    // Create the timer ONLY if it doesn't exist yet
    // Since start() is called in the worker thread, the timer will belong to this thread
    if (!timer) {
        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &DMAWorker::readDMASamples);
    }

    timer->start(500);
}

void DMAWorker::stop()
{
    running = false;
    if (timer) timer->stop();
}

void DMAWorker::readDMASamples()
{
    if(!running) return;

    int fd = ::open(DEVICE_PATH, O_RDONLY);
    if (fd < 0) {
        qDebug() << "DMAWorker: Failed to open DMA device";
        return;
    }

    float rx_buf[NUM_SAMPLES];

    for(int i = 0; i < NUM_SAMPLES; ++i)
        rx_buf[i] = 0.0f;
    ssize_t ret = ::read(fd, rx_buf, NUM_SAMPLES * sizeof(float));
    ::close(fd);

    if (ret != NUM_SAMPLES * sizeof(float)) {
        qDebug() << "DMAWorker: Failed to read all samples";
        return;
    }

//    for (int i = 0; i < NUM_SAMPLES; ++i) {
//        rx_buf[i] = QRandomGenerator::global()->bounded(20);
//    }
//    rx_buf[50] += 100;

    // Process FFT points (skip DC)
    std::vector<float> fft(FFT_POINTS);
    for(int i=0; i<FFT_POINTS; ++i){
        fft[i] = rx_buf[i + 24];  // adjust if needed
    }


    emit newFFTData(fft);
}
