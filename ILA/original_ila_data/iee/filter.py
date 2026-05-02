import pandas as pd
import struct
import matplotlib.pyplot as plt
import numpy as np

# ===============================
# CONFIG
# ===============================
CSV_FILE = "home_2/waveform.csv"

FS = 80e6          # Sampling frequency = 80 MHz
FFT_SIZE = 1024    # FFT length (change if different)

TDATA_COL   = "design_1_i/floating_point_3_m_axis_result_tdata[31:0]"
TVALID_COL  = "design_1_i/floating_point_3_m_axis_result_tvalid"
TREADY_COL  = "design_1_i/axi_dma_0_s_axis_s2mm_tready"

# ===============================
# LOAD CSV
# ===============================
df = pd.read_csv(CSV_FILE)

# ===============================
# REMOVE RADIX ROW
# ===============================
df = df[df[TVALID_COL] != "HEX"]
df = df[df[TVALID_COL] != "UNSIGNED"]
df.reset_index(drop=True, inplace=True)

# ===============================
# FIX TYPES
# ===============================
df[TVALID_COL] = df[TVALID_COL].astype(int)
df[TREADY_COL] = df[TREADY_COL].astype(int)
df[TDATA_COL]  = df[TDATA_COL].astype(str)

# ===============================
# FILTER (tvalid & tready)
# ===============================
df_valid = df[(df[TVALID_COL] == 1) & (df[TREADY_COL] == 1)]

print("Valid samples:", len(df_valid))

# ===============================
# TAKE ONE FFT FRAME
# ===============================
fft_raw = df_valid[TDATA_COL].iloc[:FFT_SIZE]

# ===============================
# IEEE-754 CONVERSION
# ===============================
def ila_unsigned_to_float(val):
    intval = int(val)
    return struct.unpack('!f', intval.to_bytes(4, byteorder='big'))[0]

fft_vals = fft_raw.apply(ila_unsigned_to_float).to_numpy()

# ===============================
# SINGLE-SIDED SPECTRUM
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
