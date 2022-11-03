% Filtro Rejeita faixa
function hd = band_stop_filter(fc1, wc1, fc2, wc2, M, fs)
    % para n[0]
    hd0 = 1 - 2 * ((fc2 - fc1) / fs);

    % Apenas a parte positiva, a outra parte resulta de um flip esta.
    n = 1:M / 2;

    % para n[x], com x variando entre 1 e M/2
    hd1 = basic_filter(fc1, wc1, n, fs);
    hd2 = basic_filter(fc2, wc2, n, fs);
    hd3 = hd1 - hd2;

    hd = [flip(hd3), hd0, hd3];
end
