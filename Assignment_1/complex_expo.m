clc;
clear all;
close all;

n=0:1:49;
a = input('Enter amplitude : ');

c1=(1/12)+(pi/12)*i;
y1=a*exp(c1*n);

z1=real(y1);
subplot(2,2,1);
stem(n,z1);
title('c1 real');
grid on;

z2=imag(y1);
subplot(2,2,2);
stem(n,z2);
title('c1 imaginary');
grid on;

c2=(1/12)+(pi/6)*i;
y2=a*exp(c2*n);

z3=real(y2);
subplot(2,2,3);
stem(n,z3);
title('c2 real');
grid on;

z4=imag(y2);
subplot(2,2,4);
stem(n,z4);
title('c2 imaginary');
grid on;