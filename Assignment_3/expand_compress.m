% assignment 3 q 4-5
%% clear
clc;
clear all;
close all;

%% creating plots for continuious waves
% set t range
t = 0:79;

% take wave frequency from user
f = input('Enter frequency of sine wave : ' );

% plot actual wave
subplot(3,2,1);
y = sin(2*pi*f*t);
plot(t,y);
title('Actual Continuious Wave');
xlabel('t');
ylabel('Amplitude');
grid on;

% plot expanded wave
subplot(3,2,3);
y = sin(2*pi*(f/2)*t);
plot(t,y);
title('Expanded Continuious Wave');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot compressed wave
subplot(3,2,5);
y = sin(2*pi*(f*2)*t);
plot(t,y);
title('Compressed Continuious Wave');
xlabel('n');
ylabel('Amplitude');
grid on;

%% creating plots for discrete waves
% set variables
n = t;

% plot original signal
subplot(3,2,2);
x = sin(2*pi*f*t);
stem(n,x);
title('Actual Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot expanded signal
subplot(3,2,4);
x = sin(2*pi*(f/2)*t);
stem(n,x);
title('Expanded Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot compressed signal
subplot(3,2,6);
x = sin(2*pi*(f*2)*t);
stem(n,x);
title('Compressed Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;