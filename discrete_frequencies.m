% Função para obtenção das frequências discretas da banda de passagem,
% banda de rejeição e de corte
function [discrete_passband, discrete_stopband, discrete_cutoff, discrete_bandwidth] = discrete_frequencies(cutoff_freq, transition_band_width, sampling_frequency)
    [passband_freq, stopband_freq] = frequencies(cutoff_freq, transition_band_width);

    % Frequência discreta da banda de passagem
    discrete_passband = (2 * passband_freq) / sampling_frequency;
    % Frequência discreta da banda de rejeição
    discrete_stopband = (2 * stopband_freq) / sampling_frequency;
    % Frequencia de discreta de corte
    discrete_cutoff = (discrete_passband + discrete_stopband) / 2;
    % Frequência discreta da largura da banda de transição
    discrete_bandwidth = discrete_stopband - discrete_passband;
end
