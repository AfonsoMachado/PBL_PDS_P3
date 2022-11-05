addpath('windows')
addpath('filters')

fc1 = 1750;
fc2 = 2500;
fs = 8000;
transition_band_width = 500;
ripple = 0.1;
attenuation = 70;

% Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
% de corte e da banda de transição
[~, ~, discrete_cutoff1, discrete_bandwidth] = discrete_frequencies(fc1, transition_band_width, fs);

[window, M] = window_choice(attenuation, discrete_bandwidth);

disp(M);

n = 0:1:M;

hd = low_pass_filter(fc1, discrete_cutoff1, M, fs);
figure;
stem(n, hd, '.');
grid;

figure;
stem(n, window, '.');
grid;

% Janelamento
hn = hd .* window;
figure;
stem(hn, '.');
grid;
