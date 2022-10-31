function [window, n] = bartlett_window(N)
    % Quantidade de amostras da janela, arredondando a mesma para um número par
    % se necessário
    N = round_even(N);
    
    % Definido os intervalos de cada amostra
    [n, M] = window_interval(N);
    
    % Equação da janela de Bartlett
    window = 1 - 2*abs(n - M/2)/M;
end