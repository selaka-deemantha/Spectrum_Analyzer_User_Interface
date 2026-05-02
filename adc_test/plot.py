import matplotlib.pyplot as plt
import os

NUM_FILES = 51  # fft_export_0 to fft_export_50

for i in range(NUM_FILES):
    filename = f"without_window/fft_export_{i}.txt"

    if not os.path.exists(filename):
        print(f"Skipping missing file: {filename}")
        continue

    # Read data
    data = []
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                data.append(float(line))

    print(f"Loaded {len(data)} samples from {filename}")

    # Plot with points
    plt.figure()
    plt.plot(data, marker='o', linestyle='-')  # ✅ points added
    plt.title(f"{filename}")
    plt.xlabel("Index")
    plt.ylabel("Value")
    plt.grid()

    plt.show()