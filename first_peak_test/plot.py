import numpy as np
import matplotlib.pyplot as plt
import os

folder_path = "."  # change if files are in another directory
num_files = 20   # total number of files

for i in range(num_files):
    filename = f"dma_frame_{i:05d}.txt"
    filepath = os.path.join(folder_path, filename)

    try:
        # Load data (skip first 2 lines)
        data = np.loadtxt(filepath, skiprows=2)

        # Ensure enough data before trimming
        if len(data) <= 20:
            print(f"{filename}: Not enough data")
            continue

        # Trim first 10 and last 10 entries
        data_trimmed = data[10:-10]

        # Convert to dB
        data_dB = 10.0 * np.log10(data_trimmed + 1e-12)

        # X-axis
        x = np.arange(len(data_dB))

        # Plot
        plt.figure()
        plt.plot(x, data_dB)
        plt.xlabel("Index")
        plt.ylabel("Value (dB)")
        plt.title(filename)
        plt.grid()
        plt.show()  # waits until window is closed

    except Exception as e:
        print(f"{filename}: Error -> {e}")
        continue