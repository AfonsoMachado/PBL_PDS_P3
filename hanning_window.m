% Quantidade de amostras da janela, arredondando a mesma para um número par
% se necessário
N = 10;
N = round_even(N);

% Definido os intervalos de cada amostra
[n, M] = window_interval(N);

% Equação da Janela de Hanning
window = (0.5 - 0.5*cos((2*pi*n)/(N-1)));

% Plot da janela de Hamming
figure;
stem(n, window, '.');
title('Hanning Window');
xlabel('Amostras');
ylabel('Amplitude');
grid;

figure;
freqz(window)