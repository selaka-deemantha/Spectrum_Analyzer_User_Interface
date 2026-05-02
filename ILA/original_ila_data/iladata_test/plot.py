import csv
import numpy as np
import matplotlib.pyplot as plt

# ------------------------ USER PARAMETERS ------------------------
CSV_FILE = "waveform.csv"   # your CSV file
ADC_COL = "design_1_i/adc_interface_0_adc_data_original[13:0]"
VALID_COL = "design_1_i/adc_interface_0_adc_data_original_valid"
# -----------------------------------------------------------------

adc_samples = []

with open(CSV_FILE, "r") as f:
    reader = csv.DictReader(f)
    
    # Clean headers to remove any extra spaces or invisible characters
    reader.fieldnames = [h.strip() for h in reader.fieldnames]

    # Skip the second row which contains "Radix" information
    next(f)

    for row in reader:
        # Get valid signal
        valid_str = row.get(VALID_COL, '').strip()
        if valid_str and valid_str != "HEX":
            valid = int(valid_str, 16)
            if valid:
                adc_val_str = row.get(ADC_COL, '').strip()
                if adc_val_str and adc_val_str != "HEX":
                    adc_val = int(adc_val_str, 16)

                    # Convert 14-bit signed value
                    if adc_val & (1 << 13):  # check sign bit
                        adc_val -= 1 << 14
                    adc_samples.append(adc_val)

adc_samples = np.array(adc_samples)
print(f"Total valid ADC samples captured: {len(adc_samples)}")

# Plot the ADC waveform
plt.figure(figsize=(12, 4))
plt.plot(adc_samples, marker='.', linestyle='-', color='blue')
plt.title("ADC Samples (Valid only)")
plt.xlabel("Sample Index")
plt.ylabel("ADC Value")
plt.grid(True)
plt.show()
