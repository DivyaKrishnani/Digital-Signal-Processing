x = input('Enter the suquence: ');

n = length(x);
y = fft(x);
mag_y = real(y);
phase_y = phase(y);

subplot(2,1,1);
stem(mag_y);
title('Magnitude')

subplot(2,1,2);
stem(phase_y);   
title('Phase')
y

%IDFT
ifft_y = ifft(y);
ifft_y