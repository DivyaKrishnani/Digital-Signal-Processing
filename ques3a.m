clc;
clear all;
close all;
x = [2 1 2 1];
y = [1 2 3]; 
n=3;
m=4;
X=[x,zeros(1,m)]; 
H=[y,zeros(1,n)]; 
for i=1:n+m-1 
    Y(i)=0; 
    for j=1:m    
        if(i-j+1>0) 
            Y(i)=Y(i)+X(j)*H(i-j+1); 
        else 
            end 
    end 
end 
Y 
stem(Y); 
ylabel('Y[n]'); 
xlabel('n'); 
title('Convolution');