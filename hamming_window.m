% Quantidade de amostras da janela
N = 11;

% N é par?
%if mod(N,2) == 0
%    N = N + 1;
%end

M = N-1;
% Mantendo a janela com o 0 centralizado
n = -M/2:1:M/2;

% Equação da Janela de Hamming
win = (0.54 + 0.46*cos((2*pi*n)/N))';

% Plot da janela de Hamming
stem(n, win, '.');
grid;