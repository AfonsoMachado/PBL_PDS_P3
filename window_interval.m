% Garante um valor de M divisível por 2, para manter os intervalos de cada
% amostra em números inteiros
function [n, M] = window_interval(N)
    M = N - 1;
    n = -M/2:1:M/2;
end

