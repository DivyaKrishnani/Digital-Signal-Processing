clc ;
close all;
clear all;
L = 1024;
n=25;
wvtool(hamming(L))
wvtool(hamming(n))
%%
L = 1024;
n=25;
wvtool(kaiser(L))
wvtool(kaiser(n))
%%
L = 1024;
n=25;
wvtool(hann(L))
wvtool(hann(n))
%%
L = 1024;
n=25;
wvtool(blackman(L))
wvtool(blackman(n))
%%
L = 1024;
n=25;
wvtool(bartlett(L))
wvtool(bartlett(n))
%%
L = 1024;
n=25;
wvtool(rectwin(L))
%-------------------------------------------------------------->
wvtool(rectwin(n))