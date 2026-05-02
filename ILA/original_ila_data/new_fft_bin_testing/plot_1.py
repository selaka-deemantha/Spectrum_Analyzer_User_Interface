import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os

# List of folders
folders = [
    "iladata_fft_2",
    "iladata_fft_2_1",
    "iladata_fft_2_2",
    "iladata_fft_2_3",
    "iladata_fft_5",
    "iladata_fft_5_5",
    "iladata_fft_6",
    "iladata_fft_7"
]

# Sampling info
fs = 80e6
N = 1024
freq = np.arange(512) * fs / N

# Highlight IF band 2-7 MHz
bin_start = int(2e6 / (fs/N))
bin_end   = int(7e6 / (fs/N))
print(f"Highlighting bins {bin_start} to {bin_end} corresponding to 2-7 MHz")

# Prepare figure
fig, axs = plt.subplots(len(folders), 1, figsize=(12, 3*len(folders)), sharex=True)

if len(folders) == 1:
    axs = [axs]  # make iterable if only 1 folder

for i, folder in enumerate(folders):
    csv_file = os.path.join(folder, "waveform.csv")  # assuming each folder has waveform.csv

    # Read CSV, skip second line
    df = pd.read_csv(csv_file, skiprows=[1])

    fft_data_col = "design_1_i/xfft_0_m_axis_data_tdata[63:0]"
    fft_valid_col = "design_1_i/xfft_0_m_axis_data_tvalid"

    df[fft_valid_col] = pd.to_numeric(df[fft_valid_col], errors='coerce')

    valid_fft_rows = df[df[fft_valid_col] == 1].iloc[:1024]

    fft_complex = []
    for val in valid_fft_rows[fft_data_col]:
        val = str(val).strip()
        x = int(val, 16)
        real = x & 0xffffffff
        imag = (x >> 32) & 0xffffffff
        if real >= 2**31:
            real -= 2**32
        if imag >= 2**31:
            imag -= 2**32
        fft_complex.append(complex(real, imag))
    
    fft_complex = np.array(fft_complex)
    fft_mag = np.abs(fft_complex[:512])

    ax = axs[i]
    ax.plot(freq/1e6, fft_mag, label=f"{folder}")
    ax.axvspan(freq[bin_start]/1e6, freq[bin_end]/1e6, color='red', alpha=0.3)
    ax.set_ylabel("Magnitude")
    ax.legend()
    ax.grid(True)

axs[-1].set_xlabel("Frequency (MHz)")
plt.suptitle("FFT Spectra from Multiple Folders")
plt.tight_layout(rect=[0, 0, 1, 0.97])
plt.show()