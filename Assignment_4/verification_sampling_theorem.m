% assignment 4 q 5
%% clear
clc;
clear all;
close all;

%% user input wave data
% take frequency
fm = input('Enter frequency : ');
% take amplitude
a = input('Enter amplitude : ');

%% calculate period of input signal
tm = 1/fm;

%% plot sampled sequences
% array for fs
fs = [1.5*fm,2*fm,5*fm];

for i = 1:3
    s(i)=subplot(3,1,i);
    % plot original
    t = 0:tm/30:2*tm;
    plot(t,a*cos(2*pi*fm*t));
    % hold for next stem in subplot
    hold on
    % set samples
    % sampling period = 1/sampling freq
    t = 0:1/fs(i):2*tm;
    stem(t,a*cos(2*pi*fm*t),'r');
    xlabel('t');
    ylabel('Amplitude');
    grid on;
end

% title every subplot
title(s(1),'fs < 2fm (fs = 1.2*fm)');
title(s(2),'fs = 2fm');
title(s(3),'fs > 2fm (fs = 5*fm)');

% link all graph axis
linkaxes([s(1),s(2),s(3)],'xy');