import os
import glob
import numpy as np
import matplotlib.pyplot as plt

# =========================
# CONFIG
# =========================
FOLDER = "."                  # current directory
FILES_PER_ROUND = 256         # change if needed
EPS = 1e-12                   # avoid log(0)

# =========================
# HELPERS
# =========================
def to_dB(x):
    return 10 * np.log10(x + EPS)   # use 20*log10 if magnitude FFT

def read_file(filepath):
    with open(filepath, "r") as f:
        lines = f.readlines()

    # --- Metadata ---
    plot_index = int(lines[0].split(":")[1].strip())

    noise_floor_li = float(lines[4].split(":")[1].strip())
    noise_spread_li = float(lines[6].split(":")[1].strip())

    # --- FFT Data ---
    data = np.array([float(x.strip()) for x in lines[7:]])

    return plot_index, noise_floor_li, noise_spread_li, data

# =========================
# PLOT ONE ROUND
# =========================
def plot_round(file_group, round_id):
    all_x = []
    all_y_linear = []
    all_y_db = []

    segment_lines = []  # store segment ranges + noise values

    points_per_segment = None

    for file in file_group:
        plot_index, nf_li, ns_li, data = read_file(file)

        if points_per_segment is None:
            points_per_segment = len(data)

        # X mapping
        start_x = plot_index * points_per_segment
        end_x = start_x + len(data)
        x_vals = np.arange(start_x, end_x)

        # Store
        all_x.extend(x_vals)
        all_y_linear.extend(data)
        all_y_db.extend(to_dB(data))

        segment_lines.append(
            (start_x, end_x, nf_li, ns_li, to_dB(nf_li), to_dB(ns_li))
        )

    # Convert to numpy
    all_x = np.array(all_x)
    all_y_linear = np.array(all_y_linear)
    all_y_db = np.array(all_y_db)

    # Sort (important)
    idx = np.argsort(all_x)
    all_x = all_x[idx]
    all_y_linear = all_y_linear[idx]
    all_y_db = all_y_db[idx]

    # =========================
    # PLOTTING
    # =========================
    fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True)

    # ---- dB plot ----
    ax1.plot(all_x, all_y_db)

    for (xs, xe, nf_li, ns_li, nf_db, ns_db) in segment_lines:
        ax1.hlines(nf_db, xs, xe, linestyles='dashed')
        ax1.hlines(ns_db, xs, xe, linestyles='dotted')

    ax1.set_ylabel("Magnitude (dB)")
    ax1.set_title(f"Round {round_id} - dB")
    ax1.grid()

    # ---- Linear plot ----
    ax2.plot(all_x, all_y_linear)

    for (xs, xe, nf_li, ns_li, nf_db, ns_db) in segment_lines:
        ax2.hlines(nf_li, xs, xe, linestyles='dashed')
        ax2.hlines(ns_li, xs, xe, linestyles='dotted')

    ax2.set_ylabel("Magnitude (Linear)")
    ax2.set_xlabel("Global Bin")
    ax2.set_title(f"Round {round_id} - Linear")
    ax2.grid()

    plt.tight_layout()
    plt.show()   # wait until closed

# =========================
# MAIN LOOP
# =========================
def main():
    files = sorted(glob.glob(os.path.join(FOLDER, "fft_output_*.txt")))

    if not files:
        print("No files found!")
        return

    round_id = 0

    for i in range(0, len(files), FILES_PER_ROUND):
        round_files = files[i:i + FILES_PER_ROUND]

        print(f"Showing Round {round_id} ({len(round_files)} files)")
        plot_round(round_files, round_id)

        round_id += 1


if __name__ == "__main__":
    main()