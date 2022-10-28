
% Caso a quantidade de amostras seja par, acrescenta mais uma para que seja
% impar, evitando erros na construção da janela, assim é possível manter um
% 0 centralizado

function [N] = round_even(N)
    if mod(N,2) == 0
        N = N + 1;
    end
end

