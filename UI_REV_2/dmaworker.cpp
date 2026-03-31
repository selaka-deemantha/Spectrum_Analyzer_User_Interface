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
#include <cstring>

#include "appConfig.h"



DMAWorker::DMAWorker(QObject *parent) : QObject(parent)
{
}

void DMAWorker::start()
{
    if (running) return;

#if TEST_MODE
//    qDebug() << "Starting DMAWorker in TEST MODE";
    fd = -1;   // no device used

#else
    // open the dma device once
    fd = ::open(DEVICE_PATH, O_RDONLY);
    if (fd < 0) {
#if DEBUG_MSG
        qDebug() << "Failed to open DMA device:" << strerror(errno);
#endif
        return;
    }

#if DEBUG_MSG
    qDebug() << "Starting DMAWorker in REAL MODE";
#endif

#endif

    running = true;

    if (!timer) {
        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &DMAWorker::readDMASamples);
    }

    timer->start(5);   // 5 ms interval
}

void DMAWorker::stop()
{
    running = false;
    if (timer) timer->stop();
    if (fd >= 0) {
            ::close(fd);
            fd = -1;
        }
}

void DMAWorker::readDMASamples()
{
    if (!running) return;

#if TEST_MODE

    static uint32_t test_freq_index = 0;

    std::vector<float> fft(FFT_POINTS);

    // ----------------------------------------
    // Parameters (match your real data scale)
    // ----------------------------------------
    const float NOISE_MIN = 1e10f;
    const float NOISE_MAX = 1e12f;

    const int   SPIKE_INDEX = 40;     // fixed spike location
    const float SPIKE_VALUE = 5e13f;  // large spike (like your data)

    // ----------------------------------------
    // Generate noise (large range)
    // ----------------------------------------
    for (int i = 0; i < FFT_POINTS; ++i)
    {
        float rand01 = QRandomGenerator::global()->generateDouble();
        fft[i] = NOISE_MIN + rand01 * (NOISE_MAX - NOISE_MIN);
    }

    // ----------------------------------------
    // Insert static spike
    // ----------------------------------------
    fft[SPIKE_INDEX] = SPIKE_VALUE;

    // ----------------------------------------
    // Send data
    // ----------------------------------------
    emit newFFTData(test_freq_index, fft);

    test_freq_index = (test_freq_index + 1) % NUM_SAMPLES;

#else

// -------- REAL HARDWARE MODE --------

    if (fd < 0) return;

    uint32_t raw_buf[NUM_SAMPLES];

    ssize_t ret = ::read(fd, raw_buf, NUM_SAMPLES * sizeof(uint32_t));
    if (ret != NUM_SAMPLES * sizeof(uint32_t)) return;

    uint32_t freq_index = raw_buf[0];

    std::vector<float> fft(FFT_POINTS);

    for (int i = 0; i < FFT_POINTS; ++i) {
        float val;
        std::memcpy(&val, &raw_buf[i + 24], sizeof(float));
        fft[i] = val;
    }

    emit newFFTData(freq_index, fft);

#if DEBUG_MSG
    qDebug() << "[REAL MODE] index =" << freq_index;
#endif

#endif
}
