function [window, n] = blackman_window(N)
    % Quantidade de amostras da janela, arredondando a mesma para um número par
    % se necessário
    N = round_even(N);

    % Definido os intervalos de cada amostra
    [n, M] = window_interval(N);

    % Equação da Janela de Blackman
    window = (0.42 - 0.5 * cos((2 * pi * n) / M) + 0.08 * cos((4 * pi * n) / M));
end
