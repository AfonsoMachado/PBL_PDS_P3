function [window, M] = rectangular_window(discrete_bandwidth)

    N = ceil(0.9 / (discrete_bandwidth / 2));

    % Quantidade de amostras da janela, arredondando a mesma para um número par
    % se necessário
    N = round_even(N);

    % Definido os intervalos de cada amostra
    [~, M] = window_interval(N);

    % Equação da Janela de Hamming
    window = ones(1, N);
end
