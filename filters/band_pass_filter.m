% Filtro passa faixa
function hdn = band_pass_filter(fc1, wc1, fc2, wc2, M, fs)
    % para n[0]
    hd0 = 2 * ((fc2 - fc1) / fs);

    % Apenas a parte positiva, a outra parte resulta de um flip esta.
    n = 1:M / 2;

    % para n[x], com x variando entre 1 e M/2
    hdx = basic_filter(fc2, wc2, n, fs) - basic_filter(fc1, wc1, n, fs);

    hdn = [flip(hdx), hd0, hdx];
end
