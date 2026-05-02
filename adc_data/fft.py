import numpy as np
import matplotlib.pyplot as plt
import os

NUM_FILES = 41  # 0 to 40

combined_spectrum = []

# --- 14-bit two's complement conversion ---
def to_signed_14(val):
    val = val & 0x3FFF          # keep lower 14 bits
    if val & (1 << 13):         # sign bit check
        val -= (1 << 14)
    return val

for i in range(NUM_FILES):
    filename = f"signed/fft_export_{i}.txt"

    if not os.path.exists(filename):
        print(f"Skipping {filename}")
        continue

    data = []

    # --- Read + convert ---
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                try:
                    raw = int(float(line))   # handle scientific notation
                    val = to_signed_14(raw)
                    data.append(val)
                except ValueError:
                    print("Skipping bad line:", line)

    if len(data) == 0:
        print(f"No valid data in {filename}")
        continue

    data = np.array(data)

    # --- FFT ---
    fft = np.fft.fft(data)

    # --- Magnitude in dB ---
    fft_mag = np.abs(fft)
    fft_db = 20 * np.log10(fft_mag + 1e-12)

    # --- Take bins (fix your range too if needed) ---
    fft_slice = fft_db[73:79]

    # --- Append ---
    combined_spectrum.extend(fft_slice)

# Convert to numpy
combined_spectrum = np.array(combined_spectrum)

print("Final length:", len(combined_spectrum))

# --- Plot ---
plt.figure()
plt.plot(combined_spectrum, linewidth=1)

plt.title("Combined FFT (14-bit corrected data)")
plt.xlabel("Combined Frequency Index")
plt.ylabel("Magnitude (dB)")
plt.grid()

plt.show()