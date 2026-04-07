import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import medfilt

# -------------------------
# Parameters
# -------------------------
fs = 50e6        # Sampling frequency 50 MHz
f_sig = 5e6      # Signal frequency 5 MHz
N = 2000         # Number of samples (short for easy plotting)
t = np.arange(N)/fs

# -------------------------
# Generate ADC signal
# -------------------------
adc_signal = np.sin(2*np.pi*f_sig*t)

# -------------------------
# Add random spikes
# -------------------------
np.random.seed(0)
num_spikes = 5
spike_indices = np.random.choice(N, num_spikes, replace=False)
adc_signal[spike_indices] += 5.0  # Large spikes

# -------------------------
# Apply median filter
# -------------------------
filtered_signal = medfilt(adc_signal, kernel_size=5)

# -------------------------
# Identify spikes (for plotting)
# -------------------------
spike_plot_indices = spike_indices

# -------------------------
# Plotting
# -------------------------
plt.figure(figsize=(12, 8))

# Full ADC signal
plt.subplot(3, 1, 1)
plt.plot(t, adc_signal, label='ADC signal with spikes')
plt.plot(t, filtered_signal, label='Median filtered', linestyle='--')
plt.title('Full ADC Signal and Median Filtered Output')
plt.xlabel('Time [s]')
plt.ylabel('Amplitude')
plt.legend()
plt.grid(True)

# Zoomed spikes
plt.subplot(3, 1, 2)
if len(spike_plot_indices) > 0:
    plt.stem(t[spike_plot_indices], adc_signal[spike_plot_indices],
             linefmt='r-', markerfmt='ro', basefmt='k-')
    plt.title('Spike Locations (Zoomed)')
else:
    plt.text(0.5, 0.5, 'No spikes in this segment', ha='center', va='center')
    plt.title('Spike Locations (Zoomed)')
plt.xlabel('Time [s]')
plt.ylabel('Spike Amplitude')
plt.grid(True)

# Zoomed filtered signal around spikes
plt.subplot(3, 1, 3)
plt.plot(t, filtered_signal, label='Median filtered', color='green')
plt.title('Median Filter Output (Zoomed)')
plt.xlabel('Time [s]')
plt.ylabel('Amplitude')
plt.grid(True)

plt.tight_layout()
plt.show()