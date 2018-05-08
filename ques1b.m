%1.b

clc;
close all;
clear all;

n = 0:1:32 ; 
z = exp(1i*pi*n/8) ;

a=phase(z) ;
x=real(z);
y= imag(z);


subplot(3,3,1);
stem(x);
title('Real part')

subplot(3,3,2);
stem(y);   
title('Imaginary part')

subplot(3,3,3);
stem(a);
title('Phase')

subplot(3,3,4);
stem(a,x);
title('Real Vs Phase')

subplot(3,3,5);
m = abs(x)
stem(m)
title('Real part abs')

subplot(3,3,6);
m = abs(y)
stem(m)
title('Imaginary part abs')