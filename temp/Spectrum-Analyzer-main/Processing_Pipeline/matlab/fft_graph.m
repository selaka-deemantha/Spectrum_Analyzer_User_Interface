clc; clear; close all;

%% Load data
win_data = load('..\FFT_Processor.sim\sim_1\behav\xsim\flattop_window_output.txt');
fft_data = load('..\FFT_Processor.sim\sim_1\behav\xsim\fft_output.txt');

in_signal  = win_data(:,1);
win_signal = win_data(:,2);

N  = length(in_signal);      % FFT length
fs = 100e6;                  % Sampling frequency (same as clk rate in testbench)
f  = (0:N-1)*(fs/N);         % Frequency axis
f_half = f(1:N/2);

flat_window = flattopwin(N);       % Generate Flat-Top window
matlab_win_signal = in_signal .* flat_window;

%% Plot input and windowed signal
figure;
subplot(3,1,1);
plot(in_signal, 'b'); grid on;
title("Original Input Sine Wave");
xlabel("Sample"); ylabel("Amplitude");

subplot(3,1,2);
plot(win_signal, 'r'); grid on;
title("Windowed Signal (DUT)");
xlabel("Sample"); ylabel("Amplitude");

subplot(3,1,3);
plot(matlab_win_signal, 'r'); grid on;
title("Windowed Signal (MATLAB)");
xlabel("Sample"); ylabel("Amplitude");

%% Expected FFT (MATLAB calculation)
sin_fft = fft(in_signal);     
sin_mag = abs(sin_fft);

% Find peak frequency in MATLAB FFT
[~, idx_peak_sin] = max(sin_mag(1:N/2));
freq_peak_sin = f_half(idx_peak_sin);

%% Expected FFT (MATLAB calculation)
expected_fft = fft(win_signal);     
expected_mag = abs(expected_fft);

% Find peak frequency in MATLAB FFT
[~, idx_peak_expected] = max(expected_mag(1:N/2));
freq_peak_expected = f_half(idx_peak_expected);

%% DUT FFT data (from Verilog)
dut_fft = abs(fft_data);

% Find peak frequency in DUT FFT
[~, idx_peak_dut] = max(dut_fft(1:N/2));
freq_peak_dut = f_half(idx_peak_dut);

fprintf('Peak frequency (INPUT SIGNAL FFT) = %.3f Hz\n', freq_peak_sin);
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
