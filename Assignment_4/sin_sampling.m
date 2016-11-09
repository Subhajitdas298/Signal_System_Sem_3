% assignment 4 q 6
%% clear
clc;
clear all;
close all;

%% generate and plot actual wave
% frequency
fm = 2000;
% period
p = 1/fm;
% set n
t = 0:p/50:2*p;
s(1)=subplot(3,1,1);
y = sin(2*pi*fm*t);
plot(t,y);
title('Actual signal');
xlabel('t');
ylabel('Amplitude');
grid on;

%% plot sampled sequences
%% sampling frequency 15khz
fs = 15000;
% sample period
ps = 1/fs;
subplot(3,1,2);
% plot actual signal
plot(t,y);
hold on
% set samples
tn = 0:ps:2*p;
s(2)=stem(tn,sin(2*pi*fm*tn),'r');
title('fs = 15kHz');
xlabel('t');
ylabel('Amplitude');
grid on;

%% sampling frequency 5khz
fs = 5000;
% sample period
ps = 1/fs;
subplot(3,1,3);
% plot actual signal
plot(t,y);
hold on
% set samples
tn = 0:ps:2*p;
s(3)=stem(tn,sin(2*pi*fm*tn),'r');
title('fs = 5kHz');
xlabel('t');
ylabel('Amplitude');
grid on;

%% link all graph axis
linkaxes([s(1),s(2),s(3)],'xy');