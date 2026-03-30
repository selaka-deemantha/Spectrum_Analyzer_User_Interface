# Simple VCO sweep to get output frequencies


input_frequency = 200
sweep_start = 185
sweep_end = 205



def vco1_frequency(index, start_freq=5000):
    return start_freq + index 

def mixing_chain(f_in, f_vco1, f_vco2=4694, f_vco3=289):
    # 3-stage mixing: f1 = |f_in - f_vco1|, f2 = |f1 - f_vco2|, f_out = |f2 - f_vco3|
    f1 = abs(f_in - f_vco1)
    f2 = abs(f1 - f_vco2)
    f_out = abs(f2 - f_vco3)
    return f_out

def sweep_vco1(f_in, index_start=0, index_end=50, start_freq=5000):
    output_freqs = []
    for idx in range(index_start, index_end + 1, 5):
        f_vco1 = vco1_frequency(idx, start_freq)
        f_out = mixing_chain(f_in, f_vco1)
        output_freqs.append(f_out)
    return output_freqs

# Example usage
if __name__ == "__main__":
    f_in = input_frequency
    output_freq_list = sweep_vco1(f_in, sweep_start, sweep_end)
    print(output_freq_list)