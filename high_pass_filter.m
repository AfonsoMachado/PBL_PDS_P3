% Filtro passa-alta
function hd = high_pass_filter(fc, wc, M, fs)
    % para n[0]
    hd0 = 1 - 2 * (fc / fs);

    n = 1:M / 2;

    % Amostras do filtro variando de 1 a M/2 (definido por n)
    hd1 = -basic_filter(fc, wc, n, fs);

    % Filtro completo, variando de -M/2 a M/2
    hd = [flip(hd1), hd0, hd1];
end
