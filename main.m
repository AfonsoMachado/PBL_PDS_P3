% Frequencia de corte
fc = 1750;
% Frequencia de amostragem
fs = 8000;
% Largura da banda de transição
bandwidth = 500;
% Amostras
M = 52;

% Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
% e de corte
[discrete_passband, discrete_stopband, discrete_cutoff] = discrete_frequencies(fc, bandwidth, fs);

hd = high_pass_filter(fc,discrete_cutoff, M, fs);
stem(hd);
