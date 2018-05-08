clc;
clear all;
close all;
x = [1 1 1 2 1 1];
h = [1 1 2 1]; 
m=length(x);
n=length(h);
len = max(m,n);
X=[x,zeros(1,len-m)]; 
H=[h,zeros(1,len-n)];

Y = zeros(1,len);
for i=0:len-1
    for j=0:len-1
        k = mod(i-j,len);
        Y(i+1) = Y(i+1) + X(j+1) * H(k+1);
    end
end

Y
stem(Y)





