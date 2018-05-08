function [X] = q6_a(x);
x=[1,2,3,4];
N = length(x);
x0 = x(1:2:N);
x1 = x(2:2:N);
X0 = q6_a(x0);
X1 = q6_a(x1);
for k = 0:N/2-1
    %STEP 3
        W(k+1) = exp(-1j*2*pi*k/N);  %calculate twiddle factor "W"
    % STEP 4 (Eq. 6 and 7)
        x(k+1) = X0(k+1) + W(k+1)*X1(k+1);  %X0 + W*X1
        x(k+1+N/2) = X0(k+1) - W(k+1)*X1(k+1);  %X0 - W*X1
end %end for
end %end dcDFT