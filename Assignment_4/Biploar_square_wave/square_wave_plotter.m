% assignment 4 q 8
%% clear
clc;
clear all;
close all;

%% take frequency and duty cycle
% take freq
f = abs(input('Frequency : '));
% take duty
d = abs(input('Duty cycle (%) : '));

%% generate sequence by function call
[bi,n] = sq_w(f,d);

%% plot actual waves
stem(n,bi);
title('Bipolar');
xlabel('t');
ylabel('Amplitude');
grid on;