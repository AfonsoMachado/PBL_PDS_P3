% Quantidade de amostras da janela, arredondando a mesma para um número par
% se necessário
N = 50;
N = round_even(N);

% Definido os intervalos de cada amostra
[n, M] = window_interval(N);

% Equação da Janela de Hamming
window = ones(1, N);

% Plot da janela de Hamming
stem(n, window, '.');
title('Rectangular Window');
xlabel('Amostras');
ylabel('Amplitude');
grid;

figure;
freqz(window)