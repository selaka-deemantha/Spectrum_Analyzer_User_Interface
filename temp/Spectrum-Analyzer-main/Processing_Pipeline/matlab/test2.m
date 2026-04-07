clc; clear; close all;

%% Load data
win_data = readmatrix('..\FFT_Processor.sim\sim_1\behav\xsim\windowed_samples.csv'); % index, windowed_sample
fft_data = load('..\FFT_Processor.sim\sim_1\behav\xsim\fft_output.txt');

%% Take only first N samples for FFT
N  = 1024;      % FFT length
win_signal = win_data(1:N, 2);   % Only first N samples

fs = 100e6;                  % Sampling frequency (same as clk rate in testbench)
f  = (0:N-1)*(fs/N);         % Frequency axis
f_half = f(1:N/2);

flat_window = flattopwin(N);       % Generate Flat-Top window

%% Plot input and windowed signal
subplot(3,1,2);
plot(win_signal, 'r'); grid on;
title("Windowed Signal (DUT)");

%% Expected FFT (MATLAB calculation)
expected_fft = fft(win_signal);     
expected_mag = abs(expected_fft);

% Find peak frequency in MATLAB FFT
[~, idx_peak_expected] = max(expected_mag(1:N/2));
freq_peak_expected = f_half(idx_peak_expected);

%% DUT FFT data (from Verilog)
dut_fft = abs(fft_data(1:N));   % Take only first N samples if fft_data contains more

% Find peak frequency in DUT FFT
[~, idx_peak_dut] = max(dut_fft(1:N/2));
freq_peak_dut = f_half(idx_peak_dut);

fprintf('Peak frequency (MATLAB FFT) = %.3f Hz\n', freq_peak_expected);
fprintf('Peak frequency (DUT FFT)    = %.3f Hz\n', freq_peak_dut);

%% Plot Expected FFT
figure;
plot(f_half, expected_mag(1:N/2), 'b', 'LineWidth', 1.5); hold on;
plot(freq_peak_expected, expected_mag(idx_peak_expected), 'ro', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel("Frequency (Hz)");
ylabel("Magnitude");
title("Expected FFT (MATLAB)");
legend('FFT Magnitude','Peak Frequency');

%% Plot DUT FFT
figure;
plot(f_half, dut_fft(1:N/2), 'r', 'LineWidth', 1.5); hold on;
plot(freq_peak_dut, dut_fft(idx_peak_dut), 'ko', 'MarkerSize', 8, 'LineWidth', 2);
grid on;
xlabel("Frequency (Hz)");
ylabel("Magnitude");
title("FFT from DUT (Verilog)");
legend('FFT Magnitude','Peak Frequency');
