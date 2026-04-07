import numpy as np
import matplotlib.pyplot as plt

# =========================
# Parameters
# =========================
Fs = 80e6
Ts = 1 / Fs
N  = 65536

t = np.arange(N) * Ts

f_signal = 5e6
f_noise  = 250e3

A_signal = 0.2
A_noise  = 1.0

ADC_BITS = 14
ADC_MAX  = 2**(ADC_BITS-1) - 1
ADC_MIN  = -2**(ADC_BITS-1)

# =========================
# Generate signals
# =========================
clean = A_signal * np.sin(2*np.pi*f_signal*t)
noise = A_noise  * np.sin(2*np.pi*f_noise*t)
noisy = clean + noise

# =========================
# ADC quantization (14-bit)
# =========================
def adc_quantize(x):
    x_norm = x / np.max(np.abs(x))
    adc = np.round(x_norm * ADC_MAX)
    adc = np.clip(adc, ADC_MIN, ADC_MAX)
    return adc.astype(np.int16)

noisy_adc = adc_quantize(noisy)

# =========================
# NOTCH FILTER (250 kHz)
# =========================
f0 = 250e3
w0 = 2 * np.pi * f0 / Fs

r = 0.995   # higher = sharper notch (0.99–0.999)

y_notch = np.zeros_like(noisy_adc, dtype=np.float64)

for n in range(2, len(noisy_adc)):
    y_notch[n] = (
        noisy_adc[n]
        - 2*np.cos(w0)*noisy_adc[n-1]
        + noisy_adc[n-2]
        + 2*r*np.cos(w0)*y_notch[n-1]
        - (r**2)*y_notch[n-2]
    )

# =========================
# FFT function
# =========================
def compute_fft(x):
    X = np.fft.fft(x)
    X = np.fft.fftshift(X)
    return np.abs(X)

fft_before = compute_fft(noisy_adc)
fft_after  = compute_fft(y_notch)

freq = np.fft.fftshift(np.fft.fftfreq(N, Ts))

# =========================
# Time-domain plot
# =========================
samples_to_plot = 2000

plt.figure(figsize=(12,5))
plt.plot(noisy_adc[:samples_to_plot], label="Before Filter")
plt.plot(y_notch[:samples_to_plot], label="After Notch Filter")
plt.title("Time Domain Signal")
plt.xlabel("Sample Index")
plt.ylabel("ADC Counts")
plt.legend()
plt.grid()
plt.show()

# =========================
# FFT plot
# =========================
plt.figure(figsize=(12,6))

plt.plot(freq/1e6, 20*np.log10(fft_before + 1e-6), label="Before Filter")
plt.plot(freq/1e6, 20*np.log10(fft_after  + 1e-6), label="After Notch Filter")

plt.title("FFT Comparison")
plt.xlabel("Frequency (MHz)")
plt.ylabel("Magnitude (dB)")
plt.xlim(0, 10)
plt.grid()
plt.legend()

plt.show()