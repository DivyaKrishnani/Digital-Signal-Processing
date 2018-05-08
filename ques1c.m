%1.c

clc;
close all;
clear all;

%even
k=1;
for n=-10:1:10
    x(k) = 0.5 * ((0.8^n)+(0.8^(-n)));
    y(k) = 0.5 * ((0.8^n)-(0.8^(-n)));
    k=k+1;
end


n=-10:10;


subplot(1,2,1);
stem(n,x);   
title('Even part');

subplot(1,2,2);
stem(n,y);   
title('Odd part');
    