import csv

INPUT_CSV = "iladata5_2/waveform.csv"
OUTPUT_TXT = "fft_output.txt"

FFT_DATA_COL  = "design_1_i/xfft_0_m_axis_data_tdata[63:0]"
FFT_VALID_COL = "design_1_i/xfft_0_m_axis_data_tvalid"
FFT_LAST_COL  = "design_1_i/xfft_0_m_axis_data_tlast"

def parse_value(val):
    """
    Handles HEX, decimal, empty values safely
    """
    val = val.strip()

    if val == "" or val.upper() == "HEX":
        return None

    # Vivado exports hex without 0x
    if any(c in val.lower() for c in "abcdef"):
        return int(val, 16)
    else:
        return int(val)

fft_samples = []

with open(INPUT_CSV, newline="") as f:
    reader = csv.DictReader(f)

    for row in reader:

        tvalid = parse_value(row[FFT_VALID_COL])
        tlast  = parse_value(row[FFT_LAST_COL])

        if tvalid is None:
            continue   # skip radix line

        if tvalid == 1:
            fft_samples.append(row[FFT_DATA_COL])

        if tlast == 1:
            break

with open(OUTPUT_TXT, "w") as f:
    for s in fft_samples:
        f.write(s + "\n")

print("✅ FFT extraction complete")
print("FFT bins captured:", len(fft_samples))
print("Saved to:", OUTPUT_TXT)
