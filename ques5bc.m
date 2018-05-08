clc;
clear all;
close all;

h = [1 1 1 2 1 1];
x = [1 1 2 1];
circo = cconv(h,x)
linc = conv(h,x)

m=length(x);
n=length(h);
len = max(m,n);
X=[x,zeros(1,len-1)]; 
H=[h,zeros(1,len-m+1)];

circular = ifft(fft(X).*fft(H));
circular

stem(circo)
