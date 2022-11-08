function main_init(FC1, FC2, FS, TBANDWITH, ATT, FTYPE, WINDOW, RIPPLE)
    addpath('windows')
    addpath('filters')
    % Parâmetros do filtro
    fc1 = FC1;
    fc2 = FC2;
    fs = FS;
    transition_band_width = (TBANDWITH);
    attenuation = (ATT);
    windowchoice = WINDOW;
    ripple = RIPPLE;
    
    % Tipo do filtro
    % lowpass, highpass, bandpass, bandstop
    filter_type = FTYPE;
    
    % Obtendo as frequencia discretas, da banda de passagem, banda de rejeição
    % de corte e da banda de transição
    [~, ~, discrete_cutoff1, discrete_bandwidth] = discrete_frequencies(fc1, transition_band_width, fs);
    [~, ~, discrete_cutoff2, ~] = discrete_frequencies(fc2, transition_band_width, fs);
    
    if attenuation < 0 || attenuation > 74
        disp('Especificações não suportadas');
    else
        
        % Definindo o tamanho de M e escolhendo a janela
        [window, M, win_name] = window_choice(attenuation, discrete_bandwidth, windowchoice);
    
        n = 0:1:M;
    
        switch filter_type
            case 'Passa-Baixa'
                hdn = low_pass_filter(fc1, discrete_cutoff1, M, fs);
            case 'Passa-Alta'
                hdn = high_pass_filter(fc1, discrete_cutoff1, M, fs);
            case 'Passa-Banda'
                hdn = band_pass_filter(fc1, discrete_cutoff1, fc2, discrete_cutoff2, M, fs);
            case 'Rejeita-Faixa'
                hdn = band_stop_filter(fc1, discrete_cutoff1, fc2, discrete_cutoff2, M, fs);
        end
    
        % Truncamento
        hn = hdn .* window;
    
        % Filtro
        figure('Name', 'Projeto do filtro por janelamento');
    
        subplot(3, 1, 1);
        stem(hdn, '.');
        xlim([1 M + 1])
        title('hd[n] - Filtro ideal')
        ylabel('Amplitude')
        xlabel(strcat('Amostras = ', {' '}, int2str(M)))
        grid;
    
        % Janela
        subplot(3, 1, 2);
        stem(window, '.');
        xlim([1 M + 1])
        title(strcat('w[n] - Janela', {' '}, win_name))
        ylabel('Amplitude')
        xlabel(strcat('Amostras = ', {' '}, int2str(M)))
        grid;
    
        % Truncamento
        subplot(3, 1, 3);
        stem(hn, '.');
        xlim([1 M + 1])
        title('h[n] - Truncamento')
        ylabel('Amplitude')
        xlabel(strcat('Amostras = ', {' '}, int2str(M)))
        grid;
    
        figure('Name', 'Espectros de magnitude e fase');
        freqz(hn, 1, 1000, fs);
    
        % Espectros de magnitude e fase
        %fvtool(hn, 'Fs', fs);
    end
end