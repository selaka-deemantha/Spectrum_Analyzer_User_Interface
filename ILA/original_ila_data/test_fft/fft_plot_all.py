import numpy as np
import matplotlib.pyplot as plt
import os

# ===============================
# CONFIG
# ===============================
FFT_FOLDER = "fft_data"
FS = 80e6              # 80 MHz sampling rate
FFT_SIZE = 1024
HALF_FFT = FFT_SIZE // 2
DC_IGNORE_COUNT = 1    # ignore DC bin if needed

# ===============================
# SIGNED 32-BIT CONVERSION
# ===============================
def signed32(x):
    if x & 0x80000000:
        return x - 0x100000000
    else:
        return x

# ===============================
# PARSE FREQUENCY FROM FILENAME
# ===============================
def parse_freq_from_filename(filename):
    """
    fft_output_2_1.txt -> 2.1 MHz
    fft_output_5.txt   -> 5.0 MHz
    """
    name = filename.replace("fft_output_", "").replace(".txt", "")
    if "_" in name:
        major, minor = name.split("_")
        return f"{major}.{minor} MHz"
    else:
        return f"{name}.0 MHz"

# ===============================
# GET FFT FILES
# ===============================
fft_files = sorted([
    f for f in os.listdir(FFT_FOLDER)
    if f.endswith(".txt")
])

# ===============================
# PLOT
# ===============================
plt.figure(figsize=(12, 6))

for file in fft_files:
    real = []
    imag = []
    filepath = os.path.join(FFT_FOLDER, file)

    with open(filepath, "r") as f:
        for line in f:
            hex64 = line.strip()
            if len(hex64) != 16:
                continue

            r = signed32(int(hex64[0:8], 16))
            i = signed32(int(hex64[8:16], 16))

            real.append(r)
            imag.append(i)

    # Convert to numpy arrays
    real = np.array(real)
    imag = np.array(imag)

    # Take only positive frequencies (first 512 bins)
    real = real[DC_IGNORE_COUNT:HALF_FFT]
    imag = imag[DC_IGNORE_COUNT:HALF_FFT]

    N = len(real)

    # Magnitude
    magnitude = np.sqrt(real**2 + imag**2)

    # Frequency axis: 0 → Fs/2
    freq = np.arange(N) * FS / FFT_SIZE

    # Legend from filename
    label = parse_freq_from_filename(file)

    plt.plot(freq / 1e6, magnitude, label=label)

# ===============================
# FINALIZE PLOT
# ===============================
plt.title("FFT Magnitude Spectrum (0 – 40 MHz, Fs = 80 MHz)")
plt.xlabel("Frequency (MHz)")
plt.ylabel("Magnitude")
plt.grid(True)
plt.legend(title="Input Tone")
plt.tight_layout()
plt.show()
