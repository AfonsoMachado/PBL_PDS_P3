% Filtro passa-baixas

% Frequencia de corte
fc = 1750;
% Frequencia de amostragem
fs = 8000;
% Largura da banda de transição
bandwidth = 500;
% Amostras
M = 54;

% Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
% e de corte
[discrete_passband, discrete_stopband, discrete_cutoff] = discrete_frequencies(fc, bandwidth, fs);

% para n[0]
hd0 = 2 * (fc / fs);

n = 1:M / 2;

% Amostras do filtro variando de 1 a M/2 (definido por n)
hd1 = 2 * (fc / fs) * (sin(discrete_cutoff * pi * n) ./ (discrete_cutoff * pi * n));

b = 2 * (fc / fs) * (sin(discrete_cutoff * pi * n));
a = (discrete_cutoff * pi * n);

% Filtro completo, variando de -M/2 a M/2
hd = [flip(hd1), hd0, hd1];

figure;
stem(hd)
figure;
freqz(hd)
