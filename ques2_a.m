n=-10:0.001:10;
subplot(2,2,1)
impulse=n==0;
unitstep=n>=0;
plot (n,impulse)
title('impulse')
subplot(2,2,2)
plot(n,unitstep)
title('unitstep')
subplot(2,2,3)
r=sign(n);

plot(n,r)
title('signum')