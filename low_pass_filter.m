% Filtro passa-baixas
function hd = low_pass_filter(fc, discrete_cutoff, M, fs)
    % para n[0]
    hd0 = 2 * (fc / fs);

    n = 1:M / 2;

    % Amostras do filtro variando de 1 a M/2 (definido por n)
    hd1 = 2 * (fc / fs) * (sin(discrete_cutoff * pi * n) ./ (discrete_cutoff * pi * n));

    % Filtro completo, variando de -M/2 a M/2
    hd = [flip(hd1), hd0, hd1];
end
