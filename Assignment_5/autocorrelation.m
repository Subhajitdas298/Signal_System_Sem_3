% ass 5 q 3
%% clear
clc
clear all
close all

%% setting parameters
% take data from user
a = input('Enter amplitude : ' );
p = input('Enter no of periods : ');

t=0:1/200:p;
y = a*sin(2*pi*t);

%% plot original sequences
subplot(3,1,1);
plot(t,y);
title([num2str(a) '*sin(2*pi*t)']);
xlabel('t');
ylabel('Amplitude');
grid on;

%% stem original sequences
subplot(3,1,2);
stem(t,y);
title([num2str(a) '*sin(2*pi*t)']);
xlabel('t');
ylabel('Amplitude');
grid on;

%% generate and stem autocorrelation
subplot(3,1,3);
y = xcorr(y);
n = 0:length(y)-1;
stem(n,y);
title('autocorrelation');
xlabel('n');
ylabel('Amplitude');
grid on;