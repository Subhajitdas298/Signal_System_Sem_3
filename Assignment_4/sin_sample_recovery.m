% assignment 4 q 7
%% clear
clc;
clear all;
close all;

%% generate and plot actual wave
%sampling period
p = 1/60;   % here frequency is 60 hz
% set n
t = 0:p/50:2*p;
% wave
y = 5*sin(120*pi*t);
s(1)=subplot(2,2,1);
% plot original
plot(t,y);

%% plot sampled sequences
% array for fs
fs = [80,400,1000];

for i = 2:4
    s(i)=subplot(2,2,i);
    % plot original
    plot(t,y);
    hold on % hold plot
    % set samples
    % sampling period = 1/sampling freq
    n = 0:1/fs(i-1):2*p;
    % wave
    x = 5*sin(120*pi*n);
    % plot samples
    stem(n,x,'r');
    xlabel('t');
    ylabel('Amplitude');
    grid on;
end

% title every subplot
title(s(2),'sample rate = 80');
title(s(3),'sample rate = 400');
title(s(4),'sample rate = 1000');

% link all graph axis
linkaxes([s(1),s(2),s(3),s(4)],'xy');