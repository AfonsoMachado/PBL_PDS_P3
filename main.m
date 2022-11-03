% Frequencia de corte
fc1 = 1750;
fc2 = 2500;
% Frequencia de amostragem
fs = 8000;
% Largura da banda de transição
bandwidth = 500;
% Amostras
M = 52;

% Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
% e de corte
[~, ~, discrete_cutoff1] = discrete_frequencies(fc1, bandwidth, fs);
[~, ~, discrete_cutoff2] = discrete_frequencies(fc2, bandwidth, fs);

hd = band_stop_filter(fc1, discrete_cutoff1, fc2, discrete_cutoff2, M, fs);
stem(hd);
