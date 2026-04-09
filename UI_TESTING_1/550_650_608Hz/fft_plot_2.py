import numpy as np
import matplotlib.pyplot as plt

# -------------------------
# PARAMETERS
# -------------------------
SCALE = 7.98726e24  # scale factor to map max spike to -20 dBm
EPS = 1e-12         # avoid log(0)

# -------------------------
# READ FILE
# -------------------------
data = []
with open("fft_full.txt", "r") as f:
    for line in f:
        line = line.strip()
        if line:
            data.append(float(line))

data = np.array(data)

# -------------------------
# SCALE AND CONVERT TO dBm
# -------------------------
scaled_data = data / SCALE
data_dBm = 10 * np.log10(scaled_data / 1e-3 + EPS)  # P in mW

# -------------------------
# PLOT
# -------------------------
plt.figure(figsize=(12,4))
plt.plot(data_dBm, linewidth=1)
plt.scatter(np.argmax(data_dBm), np.max(data_dBm), color='red', label='Max spike')
plt.title("FFT Data in dBm (scaled)")
plt.xlabel("Index")
plt.ylabel("Magnitude (dBm)")
plt.grid(True)
plt.legend()
plt.show()