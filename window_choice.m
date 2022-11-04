function window = window_choice(attenuation)

    if attenuation <= 21
        window='retangular';
    elseif attenuation > 21 && attenuation <= 25
        window='bartlett';
    elseif attenuation > 25 && attenuation <= 44
        window='hanning';
    elseif attenuation > 44 && attenuation <= 53
        window='hamming';
    elseif attenuation > 53 && attenuation <= 74
        window='blackman';
    else
        window='error';
    end

end

