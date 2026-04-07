function make_flattop_hex(N, fname)
    w = flattopwin(N);              

    wq = round(w * (2^15 - 1));   
    wq = int16(wq);

    fid = fopen(fname, 'w');
    for k = 1:N/2
        fprintf(fid, '%04X\n', typecast(wq(k), 'uint16'));
    end
    fclose(fid);

    figure;
    subplot(2,1,1);
    plot(0:N-1, w, 'b', 'LineWidth', 1.5);
    grid on;
    xlabel('Sample Index n');
    ylabel('Amplitude');
    title(sprintf('Flat Top Window (N = %d)', N));

    subplot(2,1,2);
    stem(0:N-1, double(wq)/(2^15-1), 'r','filled');
    grid on;
    xlabel('Sample Index n');
    ylabel('Amplitude (Quantized)');
    title('Quantized Flat Top Window (Q1.15)');
end
