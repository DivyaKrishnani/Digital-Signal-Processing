clc;
clear all;
rp = input('Enter the passband ripple = ');
rs = input('Enter the stopband ripple = ');
wp = input('Enter the passband frequency = ');
ws = input('Enter the stopband frequency = ');
fs = input('Enter the sampling frequency = ');
w1 = 2*wp/fs;
w2 = 2*ws/fs;
[n,wn] = buttord(w1,w2,rp,rs,'s');
[b,a] = butter(n,wn,'high','s');
[bz,az] = impinvar(b,a,fs);
w = 0:0.01:pi;
[h,om] = freqs(b,a,w);
m = 20*log10(abs(h));
an = angle(h);
subplot(2,1,1);
plot(om/pi,m);
ylabel('Gain in dB ---->');
xlabel('Normalised frequency ---->');
title('Amplitude Response');
grid on;
subplot(2,1,2);
plot(om/pi,an);
xlabel('Normalised frequency ---->');
ylabel('Phase in radians ---->');
title('Phase Response');
grid on;
