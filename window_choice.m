function [window, M, win_name] = window_choice(attenuation, discrete_bandwidth, windowchoice)
    if(windowchoice == "Auto (Padrão)")
        if attenuation > 0 && attenuation <= 21
            [window, M] = rectangular_window(discrete_bandwidth);
            win_name = 'Retangular';
        elseif attenuation > 21 && attenuation <= 25
            [window, M] = bartlett_window(discrete_bandwidth);
            win_name = 'Bartlett (triangular)';
        elseif attenuation > 25 && attenuation <= 44
            [window, M] = hanning_window(discrete_bandwidth);
            win_name = 'Hanning';
        elseif attenuation > 44 && attenuation <= 53
            [window, M] = hamming_window(discrete_bandwidth);
            win_name = 'Hamming';
        elseif attenuation > 53 && attenuation <= 74
            [window, M] = blackman_window(discrete_bandwidth);
            win_name = 'Blackman';
        else
            disp('error!')
        end
    elseif(windowchoice == "Retangular")
        [window, M] = rectangular_window(discrete_bandwidth);
        win_name = 'Retangular';
    elseif(windowchoice == "Bartlett")
        [window, M] = bartlett_window(discrete_bandwidth);
        win_name = 'Bartlett (triangular)';
    elseif(windowchoice == "Hamming")
        [window, M] = hamming_window(discrete_bandwidth);
        win_name = 'Hamming';
    elseif(windowchoice == "Hanning")
        [window, M] = hanning_window(discrete_bandwidth);
        win_name = 'Hanning';
    elseif(windowchoice == "Blackman")
        [window, M] = blackman_window(discrete_bandwidth);
        win_name = 'Blackman';
    else
        disp('Error!')
    end

end
