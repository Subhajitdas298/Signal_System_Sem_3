clc;
clear all;
close all;

ph = input('Enter phase : ') * pi/180;
a = input('Enter amplitude : ');

f = 0.03;
n = 0:1:79;
fx = a * sin(2 * pi * f * n + ph);
stem(n, fx);

grid on;
title('Sine wave');
xlabel('Time');
ylabel('Amplitude');