import os
import glob
import numpy as np
import matplotlib.pyplot as plt

folder = "."

files = sorted(glob.glob(os.path.join(folder, "fft_output_*.txt")))

FILES_PER_ROUND = 256  # adjust if needed

def plot_round(file_group):
    all_x = []
    all_y = []

    points_per_segment = None

    for file in file_group:
        with open(file, "r") as f:
            lines = f.readlines()

        plot_index = int(lines[0].split(":")[1].strip())
        segment_size = int(lines[2].split(":")[1].strip())

        data = [float(x.strip()) for x in lines[5:]]

        if points_per_segment is None:
            points_per_segment = len(data)

        start_x = plot_index * points_per_segment
        x_vals = np.arange(start_x, start_x + len(data))

        all_x.extend(x_vals)
        all_y.extend(data)

    all_x = np.array(all_x)
    all_y = np.array(all_y)

    # Sort
    idx = np.argsort(all_x)
    all_x = all_x[idx]
    all_y = all_y[idx]

    # Plot
    plt.figure()
    plt.plot(all_x, all_y)
    plt.title(f"Spectrum Round")
    plt.xlabel("Global Bin")
    plt.ylabel("Magnitude")
    plt.grid()

    plt.show()  # waits until window is closed


# 🔁 Loop through rounds
for i in range(0, len(files), FILES_PER_ROUND):
    round_files = files[i:i+FILES_PER_ROUND]

    print(f"Showing round {i // FILES_PER_ROUND}")
    plot_round(round_files)