#ifndef APPCONFIG_H
#define APPCONFIG_H


// Debug test
#define TEST_MODE 0
#define DEBUG_MSG 0
#define DMA_WRITE_FILE 0

#define TEST_SPIKE_INDEX 40
#define TEST_SPIKE_AMPLITUDE 5.0f
#define TEST_NOISE_LEVEL 0.8f


// Drivers
#define DEVICE_PATH "/dev/fft_dma"
#define DEVICE "/dev/vco_axi"


// FFT configuration
#define INDEX_BASED 1

#define DB_DYNAMIC_RANGE 0
#define DB_MAX_RANGE 250
#define DB_MIN_RANGE -70

#define FFT_START 70
#define FFT_END 83
#define FFT_POINTS (FFT_END - FFT_START + 1)
#define NUM_SAMPLES 1024

#define LINEAR_SCALE 7.98726e24f

#define FREQ_START_MHZ 0
#define FREQ_END_MHZ   3200
#define FREQ_STEP_MHZ  5

#define NOISE_START 150
#define NOISE_END 350


#endif // APPCONFIG_H



