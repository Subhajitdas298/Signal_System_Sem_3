% clear output
clc;
clear all;
close all;

% set variables
a = input('Enter amplitude : ');
t = 0:1:49;

% creating output for wave
fx = a .^ t;
plot(t, fx);
title('Exponential wave');
xlabel('Time');
ylabel('Amplitude');

grid on;