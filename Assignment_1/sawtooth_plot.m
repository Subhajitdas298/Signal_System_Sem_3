% clear output
clc;
clear all;
close all;

% set variables for sine waves
f = input('Enter frequency : ');
t = 0:1:79;

% creating output for wave
fx = sawtooth(2 * pi * f * t);
plot(t, fx);
title('Sawtooth wave');
xlabel('Time');
ylabel('Amplitude');
grid on;