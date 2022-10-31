function plot_window(window, samples)

    switch window
        case 'Retangular'
            [win, n] = rectangular_window(samples);
        case 'Hanning'
            [win, n] = hanning_window(samples);
        case 'Hamming'
            [win, n] = hamming_window(samples);
        case 'Blackman'
            [win, n] = blackman_window(samples);
        case 'Bartlett'
            [win, n] = bartlett_window(samples);
        otherwise
            disp('other value')
    end

    % Plot da magnitude e fase
    figure;
    freqz(win)

    % Plot da janela
    figure;
    stem(n, win, '.');
    title(strcat(window, {' '}, "Window"));
    xlabel('Amostras');
    ylabel('Amplitude');
    grid;
end
