% assignment 3 q 3
% clear
clc;
clear all;
close all;

% creating plots for continuious waves
% set t range
t = 0:79;

% take wave equation from user
y = input('Enter a continuious signal : ' );

% plot actual wave
subplot(2,2,1);
plot(t,y);
title('Actual Continuious Wave');
xlabel('t');
ylabel('Amplitude');
grid on;

% take wave amplifiaction
a = input('Enter scale factor (gain) : ' );

% plot scaled wave
subplot(2,2,3);
plot(t,a*y);
title('Scaled Continuious Wave');
xlabel('t');
ylabel('Amplitude');
grid on;

% clearing workspace
clear y t ;

% creating plots for discrete wave
% take sequence from user
x = input('Enter a sequence : ' );
origin = round(abs(input('Enter origin index (starting from 1) : ')));
% set time range
n = -(origin-1):(length(x)-origin);

% plot original signal
subplot(2,2,2);
stem(n,x);
title('Actual Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;

% take wave amplifiaction
a = input('Enter scale factor (gain) : ' );

% plot scaled signal
subplot(2,2,4);
stem(n,a*x);
title('Scaled Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;