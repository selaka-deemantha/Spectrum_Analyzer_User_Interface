clc; clear; close all;

%% Load data
win_data = readmatrix('..\FFT_Processor.sim\sim_1\behav\xsim\windowed_samples.csv'); % index, windowed_sample
fft_data = load('..\FFT_Processor.sim\sim_1\behav\xsim\fft_output.txt');           % contains 3*N samples

%% Parameters
N  = 1024;                  % FFT length
fs = 80e6;                 % Sampling frequency
f  = (0:N-1)*(fs/N);        % Frequency axis
f_half = f(1:N/2);

flat_window = flattopwin(N);       % Generate Flat-Top window

%% Take only first N samples for windowed signal
win_signal = win_data(1:N, 2);   % Only first N samples
subplot(3,1,2);
plot(win_signal, 'r'); grid on;
title("Windowed Signal (DUT)");

%% Expected FFT (MATLAB calculation)
expected_fft = fft(win_signal);     
expected_mag = abs(expected_fft);

% Find peak frequency in MATLAB FFT
[~, idx_peak_expected] = max(expected_mag(1:N/2));
freq_peak_expected = f_half(idx_peak_expected);

%% DUT FFT data - split into 3 segments
num_segments = 3;
for seg = 1:num_segments
    idx_start = (seg-1)*N + 1;
    idx_end   = seg*N;
    dut_fft_seg = abs(fft_data(idx_start:idx_end));  % Extract one segment

    % Find peak frequency for this segment
    [~, idx_peak_dut] = max(dut_fft_seg(1:N/2));
    freq_peak_dut = f_half(idx_peak_dut);
    
    fprintf('Segment %d: Peak frequency (DUT FFT) = %.3f Hz\n', seg, freq_peak_dut);

    % Plot DUT FFT for this segment
    figure;
    plot(f_half, dut_fft_seg(1:N/2), 'r', 'LineWidth', 1.5); hold on;
    plot(freq_peak_dut, dut_fft_seg(idx_peak_dut), 'ko', 'MarkerSize', 8, 'LineWidth', 2);
    grid on;
    xlabel("Frequency (Hz)");
    ylabel("Magnitude");
    title(sprintf("DUT FFT - Segment %d", seg));
    legend('FFT Magnitude','Peak Frequency');
end

