% clear output
clc;
clear all;
close all;

% set variables
a = input('Enter amplitude : ');
t = 0:1:79;

% creating output
fx = a * t;
plot(t, fx);
title('Ramp signal');
xlabel('Time');
ylabel('Amplitude');

grid on;