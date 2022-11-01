function [passband_freq, stopband_freq] = frequencies(cutoff_freq, bandwidth)
    passband_freq = cutoff_freq - (bandwidth / 2);
    stopband_freq = cutoff_freq + (bandwidth / 2);
end
