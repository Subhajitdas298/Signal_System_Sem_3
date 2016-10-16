% assignment 3 q 1
% clear
clc;
clear all;
close all;

% creating plots for sine waves
% set t range
t = 0:79;

% take sine waves
display(': Enter 1st sine wave properties :');
a = input('Amplitude : ');
f = input('Frequency : ');
ph = input('Phase : ') * pi/180;
y1 = a*sin(2*pi*f*t+ph);

display(' ');
display(': Enter 2nd sine wave properties :');
a = input('Amplitude : ');
f = input('Frequency : ');
ph = input('Phase : ') * pi/180;
y2 = a*sin(2*pi*f*t+ph);

% plot actual sine waves wave
subplot(4,2,1);
plot(t,y1);
title('Sine wave 1');
xlabel('t');
ylabel('Amplitude');
grid on;
subplot(4,2,3);
plot(t,y2);
title('Sine wave 2');
xlabel('t');
ylabel('Amplitude');
grid on;

% addition of two sine waves
y = y1 + y2;
subplot(4,2,5);
plot(t,y);
title('Sine wave addition');
xlabel('t');
ylabel('Amplitude');
grid on;

% multiplication of two sine waves
y = y1 .* y2;
subplot(4,2,7);
plot(t,y);
title('Sine wave multiplication');
xlabel('t');
ylabel('Amplitude');
grid on;

% clearing workspace
clear all;

% creating plots for discrete wave
% set variables
x1 = [1 2 4 5];
x2 = [3 2 5 1];
n = -1:2;

% plot original signals
subplot(4,2,2);
stem(n,x1);
title('Discrete sequence 1');
xlabel('n');
ylabel('Amplitude');
grid on;

subplot(4,2,4);
stem(n,x2);
title('Discrete sequence 2');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot addition
x = x1 + x2;
subplot(4,2,6);
stem(n,x);
title('Discrete sequence addition');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot multiplication
x = x1 .* x2;
subplot(4,2,8);
stem(n,x);
title('Discrete sequence multiplication');
xlabel('n');
ylabel('Amplitude');
grid on;