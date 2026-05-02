import struct
import matplotlib.pyplot as plt
import numpy as np

# ===============================
# CONFIG
# ===============================
TXT_FILE = "fft_output.txt"
FS = 80e6       # Sampling frequency (Hz)
FFT_SIZE = 1024 # Number of points in FFT (adjust if needed)

# ===============================
# READ HEX DATA
# ===============================
hex_values = []
with open(TXT_FILE, "r") as f:
    for line in f:
        hex_val = line.strip()
        if hex_val:  # skip empty lines
            hex_values.append(hex_val)

print(f"Total samples read: {len(hex_values)}")

# ===============================
# HEX -> FLOAT (IEEE-754)
# ===============================
def hex_to_float(h):
    h = h.strip().zfill(8)  # ensure 8 hex digits
    return struct.unpack('!f', bytes.fromhex(h))[0]

float_values = np.array([hex_to_float(h) for h in hex_values])

# ===============================
# TAKE FIRST FFT_SIZE POINTS
# ===============================
fft_vals = float_values[:FFT_SIZE]

# ===============================
# SINGLE-SIDED FFT
# ===============================
fft_vals = fft_vals[:FFT_SIZE // 2]

# ===============================
# FREQUENCY AXIS
# ===============================
freq_axis = np.arange(FFT_SIZE // 2) * (FS / FFT_SIZE)
freq_axis_mhz = freq_axis / 1e6

# ===============================
# PLOT
# ===============================
plt.figure(figsize=(10, 4))
plt.plot(freq_axis_mhz, fft_vals)
plt.xlabel("Frequency (MHz)")
plt.ylabel("FFT Output (Floating Point)")
plt.title("FFT Spectrum (Fs = 80 MHz)")
plt.grid(True)
plt.tight_layout()
plt.show()
