function hd = basic_filter(fc, wc, n, fs)
    hd = 2 * (fc / fs) * (sin(wc * pi * n) ./ (wc * pi * n));
end
