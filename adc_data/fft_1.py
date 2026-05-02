import numpy as np
import matplotlib.pyplot as plt
import os

NUM_FILES = 41  # 0 to 40

combined_spectrum = []

for i in range(NUM_FILES):
    filename = f"500MHz_0db/fft_export_{i}.txt"

    if not os.path.exists(filename):
        print(f"Skipping {filename}")
        continue

    # --- Read data ---
    data = []
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                data.append(float(line))

    data = np.array(data)

    # --------------------------------------------------
    # 🔥 CLIPPING STEP (your requirement)
    # --------------------------------------------------
    data[data > 2500] = 10

    # --- FFT ---
    fft = np.fft.fft(data)

    # --- Magnitude in dB ---
    fft_mag = np.abs(fft)
    fft_db = 20 * np.log10(fft_mag + 1e-12)

    # --- Take bins 25 to 89 ---
    fft_slice = fft_db[73:79]

    combined_spectrum.extend(fft_slice)

# --- Convert to numpy ---
combined_spectrum = np.array(combined_spectrum)

# --- Plot final result ---
plt.figure()
plt.plot(combined_spectrum, linewidth=1)

plt.title("Combined FFT (Clipped ADC > 2500 → 10)")
plt.xlabel("Combined Bin Index")
plt.ylabel("Magnitude (dB)")
plt.grid()

plt.show()