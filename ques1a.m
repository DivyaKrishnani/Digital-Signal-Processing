%1.a

clc;
close all;
clear all;
k=1;
for n=-10:1:10
    if n>=-3 && n<=3
        x(k)=2*n ;
    else 
        x(k)=0 ;
    end
    k=k+1 ;
end
     
figure
n = -10:10;
stem(n,x)

  
