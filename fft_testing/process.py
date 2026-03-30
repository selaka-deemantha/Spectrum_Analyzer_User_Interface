import glob
import numpy as np
import matplotlib.pyplot as plt

# Path to your FFT files
file_list = sorted(glob.glob("fft_output_*.txt"))

epsilon = 1e-20  # small number to avoid log(0)

for filename in file_list:
    # Read the file
    with open(filename, "r") as f:
        lines = f.readlines()

    # Extract plot index from the header
    plot_index = None
    fft_data = []

    for line in lines:
        line = line.strip()
        if line.startswith("# Plot index:"):
            plot_index = int(line.split(":")[1].strip())
        elif line.startswith("#") or line == "":
            continue  # skip other headers or empty lines
        else:
            fft_data.append(float(line))

    fft_data = np.array(fft_data)

    # Convert to dB scale
    fft_db = 10 * np.log10(fft_data + epsilon)

    # Plot FFT in dB
    plt.figure(figsize=(8, 4))
    plt.plot(fft_db, marker='o', linestyle='-', markersize=4)
    plt.title(f"FFT Plot in dB - Plot Index: {plot_index}")
    plt.xlabel("FFT Bin")
    plt.ylabel("Magnitude [dB]")
    plt.grid(True)
    plt.tight_layout()
    plt.show()