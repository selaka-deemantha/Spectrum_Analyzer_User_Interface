% Load CSV data
windowed = readmatrix('..\FFT_Processor.sim\sim_1\behav\xsim\windowed_samples.csv'); % index, windowed_sample
psd      = readmatrix('..\FFT_Processor.sim\sim_1\behav\xsim\psd_output.csv');       % index, psd_data

% Make all magnitudes positive
windowed(:,2) = windowed(:,2);
psd(:,2)      = abs(psd(:,2));

% Plot windowed samples
figure;
plot(windowed(:,1), windowed(:,2));
xlabel('Sample Index');
ylabel('Amplitude');
title('Windowed Signal (Positive Magnitudes)');

% Plot PSD output
figure;
plot(psd(:,1), psd(:,2));
xlabel('Frequency Bin');
ylabel('Power');
title('Power Spectral Density');

% Find peak PSD
[peak_power, peak_bin] = max(psd(:,2));
disp(['Peak PSD at bin: ', num2str(peak_bin), ', Power: ', num2str(peak_power)]);

% Convert bin to frequency
Fs = 80e6;       % ADC sampling frequency in Hz
N  = 1024;       % FFT size
peak_freq = (peak_bin-1)*(Fs/N);  % Frequency in Hz
disp(['Peak frequency: ', num2str(peak_freq/1e6), ' MHz']);
