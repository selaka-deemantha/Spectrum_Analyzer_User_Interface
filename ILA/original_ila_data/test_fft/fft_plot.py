import numpy as np
import matplotlib.pyplot as plt

# ===============================
# CONFIG
# ===============================
FFT_FILE = "fft_output.txt"
FS = 80e6  # 80 MHz
DC_IGNORE_COUNT = 5  # number of initial samples to ignore (adjustable)

# ===============================
# SIGNED CONVERSION
# ===============================
def signed32(x):
    if x & 0x80000000:
        return x - 0x100000000
    else:
        return x

# ===============================
# READ FFT DATA
# ===============================
real = []
imag = []

with open(FFT_FILE, "r") as f:
    for line in f:
        hex64 = line.strip()
        if len(hex64) != 16:
            continue

        r = signed32(int(hex64[0:8], 16))
        i = signed32(int(hex64[8:16], 16))

        real.append(r)
        imag.append(i)

real = np.array(real)
imag = np.array(imag)

print(f"Total samples read: {len(real)}")

# ===============================
# REMOVE INITIAL DC SPIKE
# ===============================
real = real[DC_IGNORE_COUNT:]
imag = imag[DC_IGNORE_COUNT:]

# ===============================
# MAGNITUDE
# ===============================
magnitude = np.sqrt(real**2 + imag**2)

# ===============================
# FREQUENCY AXIS
# ===============================
freq = np.arange(len(magnitude)) * FS / len(magnitude)

# ===============================
# PLOT
# ===============================
plt.figure(figsize=(10,5))
plt.plot(freq/1e6, magnitude)
plt.title("FFT Magnitude (DC spike removed)")
plt.xlabel("Frequency (MHz)")
plt.ylabel("Magnitude")
plt.grid(True)
plt.tight_layout()
plt.show()
