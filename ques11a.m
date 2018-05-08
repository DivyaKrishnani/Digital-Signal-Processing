 clc ;
 clear all;
 rp = 0.23;
 rs = 47;
 wp = 1300;
 ws = 1550;
 fs = 7800;
 w1 = 2*wp/fs;
 w2 = 2*ws/fs;
 [n,wn] = cheb1ord(w1,w2,rp,rs);
 [b,a] = cheby1(n,rp,wn);
 [bz,az] = impinvar(b,a,fs);
 w = 0:0.01:pi;
 [h,om] = freqz(bz,az,w);
 m = 20*log10(abs(h));
 an = angle(h);
 subplot(2,1,1);
 plot(om/pi,m);
 
 title('Magnitude Response');
 ylabel('Gain in dB ---->');
 xlabel('Normalised Frequency ---->');
 grid on;
 subplot(2,1,2);
 plot(om/pi,an);
 title('Phase Response');
 xlabel('Normalised Frequency ---->');
 ylabel('Phase in radians ---->');
 grid on;