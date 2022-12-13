function [passband_freq, stopband_freq] = frequencies(cutoff_freq, transition_band_width)
    passband_freq = cutoff_freq - (transition_band_width / 2);
    stopband_freq = cutoff_freq + (transition_band_width / 2);
end
