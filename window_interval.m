% Garante um valor de M divisível por 2, para manter os intervalos de cada
% amostra em números inteiros
function [n, M] = window_interval(N)
    M = N - 1;
    n = 0:1:N - 1;
end
