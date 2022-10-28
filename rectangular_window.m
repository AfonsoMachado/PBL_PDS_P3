% Quantidade de amostras da janela, arredondando a mesma para um número par
% se necessário
N = 10;
N = round_even(N);

% Definido os intervalos de cada amostra
[n, M] = window_interval(N);

% Equação da Janela de Hamming
half_rect = ones(1, M/2);
window = [flip(half_rect), ones, half_rect]';

% Plot da janela de Hamming
stem(n, window, '.');
grid;