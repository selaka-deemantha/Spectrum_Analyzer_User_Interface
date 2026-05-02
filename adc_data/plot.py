import matplotlib.pyplot as plt
import numpy as np
import os

NUM_FILES = 51  # fft_export_0 to fft_export_50

def to_signed_16(val):
    val = val & 0xFFFF          # keep lower 16 bits
    if val & (1 << 15):         # if sign bit (bit 15) is 1
        val -= (1 << 16)        # convert to negative
    return val

for i in range(NUM_FILES):
    filename = f"signed/fft_export_{i}.txt"

    if not os.path.exists(filename):
        print(f"Skipping missing file: {filename}")
        continue

    data = []

    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                try:
                    val = int(float(line))   # handles scientific notation
                    val_16 = to_signed_16(val)
                    data.append(val_16)
                except ValueError:
                    print("Skipping bad line:", line)

    if len(data) == 0:
        print(f"No valid data in {filename}")
        continue

    data = np.array(data)

    print(f"Loaded {len(data)} samples from {filename}")

    # --- Plot ---
    plt.figure()
    plt.plot(data, marker='o', linestyle='-', markersize=3)
    plt.title(f"{filename} (16-bit signed)")
    plt.xlabel("Index")
    plt.ylabel("ADC Value")
    plt.grid()

    plt.show()