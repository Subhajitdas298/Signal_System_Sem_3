% clear output
clc;
clear all;
close all;

% set variables for sine waves
n = 0:1:99;
f = 0.03;

% creating output for each wave
fx = square(2 * pi * f * n, 100);
subplot(1, 2, 1);
stem(n, fx);
title('Unipolar Square');
xlabel('Time');
ylabel('Amplitude');
grid on;

fx = square(2 * pi * f * n, 50);
subplot(1, 2, 2);
stem(n, fx);
title('Bipolar Square');
xlabel('Time');
ylabel('Amplitude');
grid on;