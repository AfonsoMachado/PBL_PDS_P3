% para n[0]

fc = 1750;
fs = 8000;
bandwidth = 500;

[discrete_passband, discrete_stopband, discrete_cutoff] = discrete_frequencies(fc, bandwidth, fs);

M = 54;

% para n[0]
hd0 = 2 * (fc / fs);

n = [1:M / 2];

% para n[x], com x variando entre 1 e M/2
hd1 = 2 * (fc / fs) * (sin(discrete_cutoff * pi * n) ./ (discrete_cutoff * pi * n));

% para n[x], com x variando entre -M/2 e M/2
hd = [flip(hd1), hd0, hd1];

figure;
stem(hd, '.')
