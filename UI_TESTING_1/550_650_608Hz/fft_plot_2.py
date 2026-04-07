import numpy as np
import matplotlib.pyplot as plt

EPS = 1e-12
BLOCK_SIZE = 65
LOW_COUNT = 50

# =========================
# READ FILE
# =========================
data = []
with open("fft_full.txt", "r") as f:
    for line in f:
        line = line.strip()
        if line:
            data.append(float(line))

data = np.array(data)/ (10**19)

# =========================
# AXIS
# =========================
x = np.arange(len(data))

# =========================
# dB CONVERSION
# =========================
data_db = 10 * np.log10(data + EPS)

# =========================
# PLOT
# =========================
fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True)

# ---- RAW PLOTS ----
ax1.plot(x, data_db)
ax2.plot(x, data)

# =========================
# SEGMENT PROCESSING
# =========================
num_blocks = len(data) // BLOCK_SIZE

for i in range(num_blocks):
    start = i * BLOCK_SIZE
    end = start + BLOCK_SIZE

    block = data[start:end]

    # ---- Robust mean (lowest 50) ----
    sorted_block = np.sort(block)
    trimmed = sorted_block[:LOW_COUNT]

    mean_linear = np.mean(trimmed)
    mean_db = 10 * np.log10(mean_linear + EPS)

    # ---- Horizontal mean lines ----
    ax1.hlines(mean_db, start, end, colors='red', linewidth=2)
    ax2.hlines(mean_linear, start, end, colors='red', linewidth=2)

    # ---- Vertical boundary lines ----
    ax1.axvline(start, linestyle='--', linewidth=0.8)
    ax2.axvline(start, linestyle='--', linewidth=0.8)

# Draw last boundary line
final_boundary = num_blocks * BLOCK_SIZE
ax1.axvline(final_boundary, linestyle='--', linewidth=0.8)
ax2.axvline(final_boundary, linestyle='--', linewidth=0.8)

# =========================
# LABELS
# =========================
ax1.set_ylabel("Magnitude (dB)")
ax1.set_title("FFT with Robust Mean + Segment Boundaries (dB)")
ax1.grid()

ax2.set_ylabel("Magnitude (Linear)")
ax2.set_xlabel("Index")
ax2.set_title("FFT with Robust Mean + Segment Boundaries (Linear)")
#ax2.grid()

plt.tight_layout()
plt.show()