%assignment 2 question 1
%clear
clc;
clear all;
close all;

%sine wave
n = 0:1:20;
y = sin(0.1*pi*n);
subplot(2,2,1);
stem(n,y);
title('Sine wave');
xlabel('n');
ylabel('sine');
grid on;

%exponential
n = 0:1:39;
y = (0.8).^n;
subplot(2,2,2);
stem(n,y);
title('e^n wave');
xlabel('n');
ylabel('e^n');
grid on;

%addition of two sine
n = 0:1:39;
y = sin(0.1*pi*n)+sin(0.2*pi*n);
subplot(2,2,3);
stem(n,y);
title('Addition sine wave');
xlabel('n');
ylabel('sin(a)+sin(b)');
grid on;

%unit step
samples = abs(round(input('Enter no of samples : ')));
zros = floor(samples/2);
ons = ceil(samples/2);
n = -zros:1:ons-1;
y = [zeros(1,zros) ones(1,ons)];
subplot(2,2,4);
stem(n,y);
title('Unit step');
xlabel('n');
ylabel('u(n)');
grid on;