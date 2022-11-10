function new_attenuation = calculate_attenuation(attenuation, ripple)
    delta_p = (10^(ripple/20)) - 1;
    delta_s = 10^(-(attenuation/20));
    delta = min(delta_p, delta_s);
    new_attenuation = -20*log10(delta);
    disp(new_attenuation)
end

