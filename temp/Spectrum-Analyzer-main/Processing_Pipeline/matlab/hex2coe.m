% hex2coe.m
% Converts a HEX file of coefficients to Xilinx .COE format

% --- User parameters ---
hex_file = 'flattop_q15_256.hex';  % input hex file
coe_file = 'flattop_q15_256.coe';  % output coe file
radix = 16;                         % hexadecimal radix for .coe

% --- Read HEX file ---
fid = fopen(hex_file, 'r');
hex_lines = textscan(fid, '%s');
fclose(fid);

hex_lines = hex_lines{1};
N = length(hex_lines);

% --- Convert hex strings to decimal numbers ---
dec_vals = hex2dec(hex_lines);

% --- Write COE file ---
fid = fopen(coe_file, 'w');
fprintf(fid, 'memory_initialization_radix=%d;\n', radix);
fprintf(fid, 'memory_initialization_vector=\n');

for i = 1:N-1
    fprintf(fid, '%X,\n', dec_vals(i));
end
fprintf(fid, '%X;\n', dec_vals(N));
fclose(fid);

fprintf('COE file "%s" generated successfully (%d entries).\n', coe_file, N);
