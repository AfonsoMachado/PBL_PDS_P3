function [window, n] = hanning_window(N)
    % Quantidade de amostras da janela, arredondando a mesma para um número par
    % se necessário
    N = round_even(N);

    % Definido os intervalos de cada amostra
    [n, M] = window_interval(N);

    % Equação da Janela de Hanning
    window = (0.5 - 0.5 * cos((2 * pi * n) / M));
end
