% assignment 4 q 4
%% clear
clc;
clear all;
close all;

%% generating sequence
% take frequency
f = abs(input('Frequency : '));
% points per cycle
p = 1/f;

% sawtooth
y = [];

% single cycle of wave
% sampling frequency is (upper_limit-lower_limit)/points_per_cycle
cycle = -1:2/p:1;
% loop to generate wave upto 5 cycles
for i = 1:5
    % remove last element
    y = y(1:end-1);
    % appending a cycle to wave
    y = [y cycle];
end

% set n range
n = 0:length(y)-1;

%% plot actual waves
stem(n,y);
title('Bipolar sawtooth');
xlabel('n');
ylabel('Amplitude');
grid on;