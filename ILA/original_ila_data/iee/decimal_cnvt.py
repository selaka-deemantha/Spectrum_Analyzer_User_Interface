import struct
import numpy as np
import matplotlib.pyplot as plt

input_file = "fft_output.txt"

def hex_to_float(hex_str):
    return struct.unpack('!f', bytes.fromhex(hex_str))[0]

# Read hex data
with open(input_file, "r") as f:
    hex_values = f.read().split()

# Convert to float
fft_data = np.array([hex_to_float(h) for h in hex_values])

# Magnitude (safe even if data is real)
magnitude = np.abs(fft_data)

# Find spike
spike_index = np.argmax(magnitude)
spike_value = magnitude[spike_index]

print(f"Spike index: {spike_index} / {len(magnitude)}")
print(f"Spike magnitude: {spike_value}")

# Plot
plt.figure()
plt.plot(magnitude, label="FFT Magnitude")
plt.scatter(spike_index, spike_value, color='red', zorder=5, label="Spike")
plt.xlabel("FFT Bin Index")
plt.ylabel("Magnitude")
plt.title("FFT Output with Spike Highlighted")
plt.legend()
plt.grid(True)
plt.show()
