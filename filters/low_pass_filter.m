% Filtro passa-baixas
function hdn = low_pass_filter(fc, wc, M, fs)
    % para n[0]
    hd0 = 2 * (fc / fs);

    n = 1:M / 2;

    % Amostras do filtro variando de 1 a M/2 (definido por n)
    hdx = basic_filter(fc, wc, n, fs);

    % Filtro completo, variando de -M/2 a M/2
    hdn = [flip(hdx), hd0, hdx];
end
