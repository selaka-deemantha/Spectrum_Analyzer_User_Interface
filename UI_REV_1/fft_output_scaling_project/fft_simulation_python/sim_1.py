import numpy as np
import matplotlib.pyplot as plt

# Parameters
fs = 1000          # Sampling frequency (Hz)
f_signal = 50      # Sine wave frequency (Hz)
N = 1024           # Number of samples
adc_bits = 14      # ADC resolution
v_ref = 1.8        # ADC reference voltage (V)

# Generate a sine wave
t = np.arange(N) / fs
sine_wave = 0.5 * v_ref * np.sin(2 * np.pi * f_signal * t)  # amplitude = 0.5 * Vref

# Quantize to 14-bit ADC levels
adc_max = 2**adc_bits - 1
sine_adc = np.round((sine_wave / v_ref + 0.5) * adc_max)   # scale to 0 -> 2^14-1
sine_adc = np.clip(sine_adc, 0, adc_max)                   # ensure in range
sine_adc = sine_adc.astype(int)

# Compute FFT
fft_result = np.fft.fft(sine_adc)
fft_result = fft_result[:N//2]  # Take positive frequencies

# Calculate power (linear)
power_linear = np.real(fft_result)**2 + np.imag(fft_result)**2

# Convert to dBFS
p_ref = (adc_max**2) * (N/2)  # Reference power for normalization
power_db = 10 * np.log10(power_linear / p_ref + 1e-12)  # add small number to avoid log(0)

# Frequency axis
freqs = np.fft.fftfreq(N, 1/fs)[:N//2]

# Plot, skipping the first bin (DC)
plt.figure(figsize=(10,6))
plt.plot(freqs[1:], power_db[1:])  # start from second sample
plt.title("FFT of 14-bit Sine Wave (DC Skipped in Plot)")
plt.xlabel("Frequency (Hz)")
plt.ylabel("Power (dBFS)")
plt.grid(True)
plt.show()