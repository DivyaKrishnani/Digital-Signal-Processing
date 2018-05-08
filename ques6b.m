clc
clear
close all
 
input=[0 1 2 3 4 5 6 7 ];
a = length (input);

count_e=0;
 count_o=1;
 ip_even_final=[];
 ip_odd_final=[];
 for i=1:a/2
 ip_even = input(i+count_e);
 ip_even_final = [ip_even_final ip_even];
 ip_odd = input(i+count_o);
 ip_odd_final = [ip_odd_final ip_odd];
 count_o=count_o+1;
 count_e=count_e+1;
 end
 x_even= ip_even_final;
 N=length(x_even);
 X=zeros(size(x_even));
 Xk_final=[];
 disp('DFT of the Even Part')
 exp = 2.718281828;
 Xk0=ip_even_final(1)*exp^-((0+j*2*pi*1*0)/N)+ip_even_final(2)*exp^-((0+j*2*pi*2*0)/N)+ip_even_final(3)*exp^-((0+j*2*pi*3*0)/N)+ip_even_final(4)*exp^-((0+j*2*pi*4*0)/N);
 Xk1 =ip_even_final(1)*exp^-((0+j*2*pi*1*1)/N)+ip_even_final(2)*exp^-((0+j*2*pi*2*1)/N)+ip_even_final(3)*exp^-((0+j*2*pi*3*1)/N)+ip_even_final(4)*exp^-((0+j*2*pi*4*1)/N);
 Xk2 =ip_even_final(1)*exp^-((0+j*2*pi*1*2)/N)+ip_even_final(2)*exp^-((0+j*2*pi*2*2)/N)+ip_even_final(3)*exp^-((0+j*2*pi*3*2)/N)+ip_even_final(4)*exp^-((0+j*2*pi*4*2)/N);
 Xk3 =ip_even_final(1)*exp^-((0+j*2*pi*1*3)/N)+ip_even_final(2)*exp^-((0+j*2*pi*2*3)/N)+ip_even_final(3)*exp^-((0+j*2*pi*3*3)/N)+ip_even_final(4)*exp^-((0+j*2*pi*4*3)/N);
 Xk_even=[Xk0 Xk1 Xk2 Xk3];
 disp(Xk_even)
 x_odd= ip_odd_final;
 N=length(x_odd);
 X=zeros(size(x_odd));
 Xk_final=[];
 
 disp('DFT of Odd part') % Below code is uses for finding DFT of Odd part
 Xk4 =ip_odd_final(1)*exp^-((0+j*2*pi*1*0)/N)+ip_odd_final(2)*exp^-((0+j*2*pi*2*0)/N)+ip_odd_final(3)*exp^-((0+j*2*pi*3*0)/N)+ip_odd_final(4)*exp^-((0+j*2*pi*4*0)/N);
 Xk5 =ip_odd_final(1)*exp^-((0+j*2*pi*1*1)/N)+ip_odd_final(2)*exp^-((0+j*2*pi*2*1)/N)+ip_odd_final(3)*exp^-((0+j*2*pi*3*1)/N)+ip_odd_final(4)*exp^-((0+j*2*pi*4*1)/N);
 Xk6 =ip_odd_final(1)*exp^-((0+j*2*pi*1*2)/N)+ip_odd_final(2)*exp^-((0+j*2*pi*2*2)/N)+ip_odd_final(3)*exp^-((0+j*2*pi*3*2)/N)+ip_odd_final(4)*exp^-((0+j*2*pi*4*2)/N);
 Xk7 =ip_odd_final(1)*exp^-((0+j*2*pi*1*3)/N)+ip_odd_final(2)*exp^-((0+j*2*pi*2*3)/N)+ip_odd_final(3)*exp^-((0+j*2*pi*3*3)/N)+ip_odd_final(4)*exp^-((0+j*2*pi*4*3)/N);
 Xk_odd=[Xk4 Xk5 Xk6 Xk7];
 disp(Xk_odd)
 Nn=8;
 W0 =exp^-((0+j*2*pi*0)/Nn);
 W1 =exp^-((0+j*2*pi*1)/Nn);
 W2 =exp^-((0+j*2*pi*2)/Nn);
 W3 =exp^-((0+j*2*pi*3)/Nn);
 W4 =exp^-((0+j*2*pi*4)/Nn);
 W5 =exp^-((0+j*2*pi*5)/Nn);
 W6 =exp^-((0+j*2*pi*6)/Nn);
 W7 =exp^-((0+j*2*pi*7)/Nn);
 X0 = Xk0+Xk4*W0;
 X1 = Xk1+Xk5*W1;
 X2 = Xk2+Xk6*W2;
 X3 = Xk3+Xk7*W3;
 X4 = Xk4+Xk0*W4;
 X5 = Xk5+Xk1*W5;
 X6 = Xk6+Xk2*W6;
 X7 = Xk7+Xk3*W7;
 
 disp('End result of Radix_2_fft')
 XkA = [ X0; X1; X2; X3; X4; X5; X6; X7;];
 disp(XkA)