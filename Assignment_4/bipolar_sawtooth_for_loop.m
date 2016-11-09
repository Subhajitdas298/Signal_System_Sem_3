% assignment 4 q 4
%% clear
clc;
clear all;
close all;

%% generating sequence
% take frequency
f = abs(input('Frequency : '));
% period
p = 1/f;

% single cycle of wave
cycle = [(0:1/20:19/20) (-1:1/20:-1/20)];
% sawtooth
y = [];
% loop to generate wave upto 5 cycles
for i = 1:5
    % appending a cycle to wave
    y = [y cycle];
end

% set n range
t = 0:p/40:5*p-p/40;

%% plot actual waves
stem(t,y);
title('Bipolar sawtooth');
xlabel('t');
ylabel('Amplitude');
grid on;