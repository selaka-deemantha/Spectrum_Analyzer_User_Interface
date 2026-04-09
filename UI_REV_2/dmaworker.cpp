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
    fd = -1;

#else
    // open the dma device once
    fd = ::open(DEVICE_PATH, O_RDONLY);
    if (fd < 0) {
        return;
    }

#endif

    running = true;

    if (!timer) {
        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &DMAWorker::readDMASamples);
    }

    timer->start(1);
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

    if (!readyForNext) return;

    readyForNext = false;

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
    emit newFFTData(0.0f, 0.0f, test_freq_index, fft);

    test_freq_index = (test_freq_index + 1) % NUM_SAMPLES;

#else

// -------- REAL HARDWARE MODE --------

    if (fd < 0) return;

    uint32_t raw_buf[NUM_SAMPLES];

    ssize_t ret = ::read(fd, raw_buf, NUM_SAMPLES * sizeof(uint32_t));
    if (ret != NUM_SAMPLES * sizeof(uint32_t)) return;

    uint32_t freq_index = raw_buf[0];

    std::vector<float> fft(FFT_POINTS);

    int N = 1024;   // full FFT size

    for (int i = 0; i < FFT_POINTS; ++i)
    {
        float val;
        std::memcpy(&val, &raw_buf[FFT_START + i], sizeof(float));
        fft[i] = val / LINEAR_SCALE;
    }

    float noiseSum_dB = 0.0f;
    float noiseSum_Li = 0.0f;
    float varianceSum_dB = 0;
    float varianceSum_Li = 0;

    for (int i = NOISE_START; i<NOISE_END; i++){
        float val;
        std::memcpy(&val, &raw_buf[i], sizeof(float));
        noiseSum_dB += 10.0f * std::log10(val + 1e-12f);
        noiseSum_Li += val;
    }
    float noiseFloor_dB = noiseSum_dB / (NOISE_END - NOISE_START);
    float noiseFloor_Li = noiseSum_Li / (NOISE_END - NOISE_START);

    for (int i = NOISE_START; i < NOISE_END; i++) {
        float val;
        std::memcpy(&val, &raw_buf[i], sizeof(float));

        varianceSum_dB += (10.0f * std::log10(val + 1e-12f) - noiseFloor_dB) * (10.0f * std::log10(val + 1e-12f) - noiseFloor_dB);
        varianceSum_Li += (val - noiseFloor_Li) * (val - noiseFloor_Li);
    }

    float variance_dB = varianceSum_dB / (NOISE_END - NOISE_START);
    float variance_Li = varianceSum_Li / (NOISE_END - NOISE_START);
    float noiseSpread_dB = std::sqrt(variance_dB);
    float noiseSpread_Li = std::sqrt(variance_Li);

    emit newFFTData(noiseSpread_dB, noiseSpread_Li, noiseFloor_dB, noiseFloor_Li, freq_index, fft);


#endif
}


void DMAWorker::allowNextFrame()
{
    readyForNext = true;
}
