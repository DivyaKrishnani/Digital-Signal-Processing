t = 0:1/1e3:0.1;
subplot(2,2,1)
y = square(2*pi*50*t,25);
plot(t,y)
subplot(2,2,2)
y = square(2*pi*50*t,50);
plot(t,y)
subplot(2,2,3)
y = square(2*pi*50*t,75);
plot(t,y)
