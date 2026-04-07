import numpy as np
import matplotlib.pyplot as plt

# Load data from text file
# Assumes one value per line
filename = "fft_output_0010.txt"
fft_data = np.loadtxt(filename)

# Create x-axis (bin indices)
x = np.arange(len(fft_data))

# Plot the FFT spectrum
plt.figure(figsize=(12, 6))
plt.plot(x, fft_data, marker='o', linestyle='-')
plt.title("FFT Power Spectrum")
plt.xlabel("Bin Index")
plt.ylabel("Power (Re^2 + Im^2)")
plt.yscale("log")  # optional: logarithmic scale for better visibility
plt.grid(True, which="both", linestyle="--")
plt.show()