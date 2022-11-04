addpath('windows')
addpath('filters')

fc1 = 1750;
fc2 = 2500;
fs = 8000;
bandwidth = 500;
ripple = 0.1;
attenuation = 60;

M = 52;

window = window_choice(attenuation);
disp(window)

% Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
% e de corte
[~, ~, discrete_cutoff1] = discrete_frequencies(fc1, bandwidth, fs);
[~, ~, discrete_cutoff2] = discrete_frequencies(fc2, bandwidth, fs);

hd = band_stop_filter(fc1, discrete_cutoff1, fc2, discrete_cutoff2, M, fs);
stem(hd);
