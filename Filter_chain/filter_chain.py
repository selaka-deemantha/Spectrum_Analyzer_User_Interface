import numpy as np

# ---------------- USER CONFIG ----------------
f_input = 300.0        # MHz

vco_start = 5280.0     # MHz
vco_end   = 5310.0     # MHz
vco_step  = 5.0        # MHz

# Fixed Local Oscillators
LO2 = 4685.0           # MHz
LO3 = 312.0            # MHz

# Filters
F1_MIN, F1_MAX = 4600.0, 5300.0   # MHz
F2_MIN, F2_MAX = 300.0, 320.0     # MHz
F3_MIN, F3_MAX = 2.0, 7.0         # MHz

# ------------------------------------------------

def simulate_chain():
    results = []

    vco_values = np.arange(vco_start, vco_end + vco_step, vco_step)

    for f_vco in vco_values:

        # Store all stages
        stage = {
            "vco": f_vco,
            "m1_diff": None,
            "m1_sum": None,
            "f1_out": None,
            "m2_out": None,
            "f2_out": None,
            "m3_out": None,
            "final_out": None
        }

        # -------- Mixer 1 --------
        m1_diff = abs(f_vco - f_input)
        m1_sum  = f_vco + f_input

        stage["m1_diff"] = m1_diff
        stage["m1_sum"]  = m1_sum

        # -------- Filter 1 --------
        f1_candidates = []
        if F1_MIN <= m1_diff <= F1_MAX:
            f1_candidates.append(m1_diff)
        if F1_MIN <= m1_sum <= F1_MAX:
            f1_candidates.append(m1_sum)

        if not f1_candidates:
            results.append(stage)
            continue

        f1 = f1_candidates[0]
        stage["f1_out"] = f1

        # -------- Mixer 2 --------
        m2 = abs(f1 - LO2)
        stage["m2_out"] = m2

        # -------- Filter 2 --------
        if not (F2_MIN <= m2 <= F2_MAX):
            results.append(stage)
            continue

        stage["f2_out"] = m2

        # -------- Mixer 3 --------
        m3 = abs(m2 - LO3)
        stage["m3_out"] = m3

        # -------- Final Filter --------
        if F3_MIN <= m3 <= F3_MAX:
            stage["final_out"] = m3

        results.append(stage)

    return results


# ---------------- RUN ----------------
results = simulate_chain()

# ---------------- PRINT ALL ----------------
print("\n--- FULL RESULTS ---\n")
for r in results:
    print(r)

# ---------------- PRINT VALID OUTPUTS ONLY ----------------
print("\n--- VALID FINAL OUTPUTS (2–7 MHz) ---\n")
for r in results:
    if r["final_out"] is not None:
        print(f"VCO: {r['vco']} MHz -> Final IF: {r['final_out']} MHz")