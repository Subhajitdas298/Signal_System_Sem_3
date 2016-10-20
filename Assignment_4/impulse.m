% assignment 4 q 1
%% clear
clc;
clear all;
close all;

%% creating plots
% generate impulse using impz
% y gets amplitude matrix
% n gets time axis
[y,n] = impz(5); %amplitude 5

% plot actual wave
stem(n,y);
title('Impulse');
xlabel('n');
ylabel('Amplitude');
grid on;