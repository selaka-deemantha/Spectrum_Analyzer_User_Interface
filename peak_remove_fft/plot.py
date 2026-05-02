import numpy as np
import matplotlib.pyplot as plt

# Loop through files (adjust range if needed)
for i in range(0, 347):   # change 347 based on your last file number

    filename = f"fft_output_{i:04d}.txt"

    try:
        data = np.loadtxt(filename)
    except:
        continue  # skip if file missing

    x = np.arange(len(data))

    # -------- First max --------
    first_max = max(data)
    first_idx = np.argmax(data)

    # -------- Second max --------
    data_copy = data.copy()
    data_copy[first_idx] = 0

    second_max = max(data_copy)
    second_idx = np.argmax(data_copy)

    # -------- Print --------
    print(f"{filename}")
    print("  First max :", first_max, "at index", first_idx)
    print("  Second max:", second_max, "at index", second_idx)

    # -------- Plot --------
    plt.figure()
    plt.plot(x, data)

    # mark points
    plt.plot(first_idx, first_max, "ro")
    plt.plot(second_idx, second_max, "go")

    plt.title(filename)
    plt.xlabel("FFT Bin")
    plt.ylabel("Magnitude")
    plt.grid()

    plt.show()