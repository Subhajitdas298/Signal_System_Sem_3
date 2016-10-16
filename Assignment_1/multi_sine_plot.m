% clear output
clc;
clear all;
close all;

% set variables for sine waves
a = input('Enter amplitude : ');
f = input('Enter frequency : ');
t = 0:1:79;

% creating output for each wave
fx = a * sin(2 * pi * f * t + 0 * pi / 180);
subplot(2, 3, 1);
plot(t, fx);
title('Sinewave phase 0 deg');
xlabel('Time');
ylabel('Amplitude');
grid on;

fx = a * sin(2 * pi * f * t + 70 * pi / 180);
subplot(2, 3, 2);
plot(t, fx);
title('Sinewave phase 70 deg');
xlabel('Time');
ylabel('Amplitude');
grid on;

fx = a * sin(2 * pi * f * t + 130 * pi / 180);
subplot(2, 3, 3);
plot(t, fx);
title('Sinewave phase 130 deg');
xlabel('Time');
ylabel('Amplitude');
grid on;

fx = a * sin(2 * pi * f * t + 180 * pi / 180);
subplot(2, 3, 4);
plot(t, fx);
title('Sinewave phase 180 deg');
xlabel('Time');
ylabel('Amplitude');
grid on;

fx = a * sin(2 * pi * f * t + 360 * pi / 180);
subplot(2, 3, 5);
plot(t, fx);
title('Sinewave phase 360 deg');
xlabel('Time');
ylabel('Amplitude');
grid on;