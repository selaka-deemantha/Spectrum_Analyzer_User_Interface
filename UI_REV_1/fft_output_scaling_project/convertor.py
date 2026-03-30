import struct

input_file = "fft_output_2.txt"
output_file = "fft_output_2_float.txt"

def hex_to_float(hex_string):
    # Remove whitespace and convert hex string to integer
    int_value = int(hex_string.strip(), 16)
    
    # Convert integer to 4 bytes (big-endian)
    byte_value = int_value.to_bytes(4, byteorder='big')
    
    # Unpack as IEEE 754 float
    float_value = struct.unpack('>f', byte_value)[0]
    
    return float_value

with open(input_file, "r") as infile, open(output_file, "w") as outfile:
    for line in infile:
        hex_value = line.strip()
        if hex_value:  # Skip empty lines
            float_value = hex_to_float(hex_value)
            outfile.write(f"{float_value}\n")

print("Conversion completed. Output saved to fft_output_2_float.txt")