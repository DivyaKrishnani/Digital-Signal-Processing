prompt='amplitude';
a=input(prompt)
prompt='frequency';
f=input(prompt)
prompt='phase';
p=input(prompt)
x = 0: pi/100: 2*pi;
y=a*sin(2*pi*f*x+p);
plot(x,y),grid;



