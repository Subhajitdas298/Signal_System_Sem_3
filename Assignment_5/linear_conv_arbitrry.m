% ass 5 q 2
%% clear
clc
clear all
close all

%% setting sequences
% take sequence from user
x = input('Enter sequence x[n] : ' );
xo = round(abs(input('Enter origin index (starting from 1) : ')));
xn = -(xo-1):(length(x)-xo);

h = input('Enter sequence h[n] : ' );
ho = round(abs(input('Enter origin index (starting from 1) : ')));
hn = -(ho-1):(length(h)-ho);

%% stem original sequences
s1 = subplot(4,1,1);
stem(xn,x);
title('x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

s2 = subplot(4,1,2);
stem(hn,h);
title('h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

%% generate and stem convolution
s3 = subplot(4,1,3);
y = conv(x,h);
n = -(xo+ho-2):length(y)-(xo+ho-1);
stem(n,y);
title('Discrete x[n] \ast h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

%% generate and plot convolution
s4 = subplot(4,1,4);
plot(n,y);
title('Continuous x[n] \ast h[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

%% link all axes
linkaxes([s4,s3,s2,s1],'x');