function [discrete_passband, discrete_stopband, discrete_cutoff] = discrete_frequencies(cutoff_freq, bandwidth, sampling_frequency)
    [passband_freq, stopband_freq] = frequencies(cutoff_freq, bandwidth);

    discrete_passband = (2 * passband_freq) / sampling_frequency;
    discrete_stopband = (2 * stopband_freq) / sampling_frequency;
    discrete_cutoff = (discrete_passband + discrete_stopband) / 2;
end
