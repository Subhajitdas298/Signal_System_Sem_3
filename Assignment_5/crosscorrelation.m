% ass 5 q 4
%% clear
clc
clear all
close all

%% setting sequences
x = [1,2,1,1];
y = [1,1,2,1];

n = 0:3; 

%% stem original sequences
s1 = subplot(3,1,1);
stem(n,x);
title('x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

s2 = subplot(3,1,2);
stem(n,y);
title('y[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

%% generate and stem crosscorrelation
s3 = subplot(3,1,3);
y = xcorr(x,y);
n = 0:length(y)-1;
stem(n,y);
title('Cross-correlation');
xlabel('n');
ylabel('Amplitude');
grid on;

%% link all axes
linkaxes([s3,s2,s1],'x');