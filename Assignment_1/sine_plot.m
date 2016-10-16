clc;
clear all;
close all;

f = 0.02;
t = 0:1:49;
fx = 2 * sin(2 * pi * f * t);
plot(t, fx);

grid on;
title('Sine wave');
xlabel('Time');
ylabel('Amplitude');