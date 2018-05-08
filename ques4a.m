x = input('Enter the suquence: ');
len = length(x);
xtwo = zeros(1,len);


for k = 0:len-1
    for n = 0:len-1
        xtwo(k+1) = xtwo(k+1)+x(n+1)*exp(((-i)*2*pi*n*k)/len);
        
    end
end
mag_x = real(xtwo);
phase_x = phase(xtwo);

subplot(2,1,1);
stem(mag_x);
title('Magnitude')

subplot(2,1,2);
stem(phase_x);   
title('Phase')
xtwo

%IDFT

xidft = zeros(1,len);
for n=0:len-1
    for k=0:len-1
        xidft(n+1) = xidft(n+1) + (xtwo(k+1)*exp((i*2*pi*n*k)/len));
    end
    xidft(n+1) = xidft(n+1)/len;
end

xidft
   