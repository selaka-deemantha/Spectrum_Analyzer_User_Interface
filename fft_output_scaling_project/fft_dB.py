import numpy as np
import matplotlib.pyplot as plt

# read data
power_linear = np.loadtxt("fft_output_2_float.txt")

# remove first 4 and last 3
power_linear = power_linear[4:-3]

# keep only half (positive frequencies)
half_length = len(power_linear) // 2
power_linear = power_linear[:half_length]

# convert to dB
power_db = 10 * np.log10(power_linear)

# plot
plt.plot(power_db)
plt.xlabel("FFT Bin")
plt.ylabel("Power (dB)")
plt.title("Spectrum (Half FFT)")
plt.grid(True)
plt.show()