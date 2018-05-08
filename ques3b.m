clc;
clear all;
close all;
x = [2 1 2 1];
y = [1 2 3];
clin = conv(x,y);
clin
subplot(2,1,1)
stem(clin)
ylim([0 11])
title('Linear Convolution of x and y')