import pandas as pd
import struct
import matplotlib.pyplot as plt

# ===============================
# CONFIG
# ===============================
CSV_FILE = "home_2/waveform.csv"
OUT_TXT  = "floating_point_output_1024.txt"
NUM_POINTS = 1024

TDATA_COL  = "design_1_i/floating_point_3_m_axis_result_tdata[31:0]"
TVALID_COL = "design_1_i/floating_point_3_m_axis_result_tvalid"

# ===============================
# LOAD CSV
# ===============================
df = pd.read_csv(CSV_FILE)

# Remove Vivado Radix row
df = df[df[TVALID_COL] != "HEX"]
df = df[df[TVALID_COL] != "UNSIGNED"]
df.reset_index(drop=True, inplace=True)

# Fix types
df[TDATA_COL]  = df[TDATA_COL].astype(str)
df[TVALID_COL] = df[TVALID_COL].astype(int)

# ===============================
# FILTER VALID SAMPLES
# ===============================
df_valid = df[df[TVALID_COL] == 1].copy()

if len(df_valid) < NUM_POINTS:
    print(f"Warning: only {len(df_valid)} valid samples found")

# Take FIRST 1024 samples
df_valid = df_valid.iloc[:NUM_POINTS]

# ===============================
# IEEE-754 CONVERSION
# ===============================
def ila_unsigned_to_float(val):
    intval = int(val)
    return struct.unpack('!f', intval.to_bytes(4, byteorder='big'))[0]

df_valid["float_value"] = df_valid[TDATA_COL].apply(ila_unsigned_to_float)

# ===============================
# SAVE TO TXT (optional but useful)
# ===============================
with open(OUT_TXT, "w") as f:
    f.write("index,raw_unsigned,float_value\n")
    for idx, row in df_valid.iterrows():
        f.write(f"{idx},{row[TDATA_COL]},{row['float_value']}\n")

print(f"Saved first {len(df_valid)} samples to {OUT_TXT}")

# ===============================
# PLOT
# ===============================
plt.figure(figsize=(10, 4))
plt.plot(df_valid["float_value"])
plt.xlabel("Sample Index (0–1023)")
plt.ylabel("Floating Point Value")
plt.title("Floating Point IP Output – First 1024 Valid Samples")
plt.grid(True)
plt.tight_layout()
plt.show()
