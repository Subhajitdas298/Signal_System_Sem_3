% assignment 4 q 3
%% clear
clc;
clear all;
close all;

%% generating sequences
% take frequency
f = abs(input('Frequency : '));
% period
p = 1/f;

% take no of cycles to generate
cycles = round(abs(input('No of cycles to generate : ')));

% sawtooth
y = [];

% single cycle of wave
cycle = 0:1/30:29/30;
% loop to generate wave
for i = 1:cycles
    % appending a cycle to wave
    y = [y cycle];
end

% set n range
n = 0:p/30:cycles*p-p/30;

%% plot actual waves
stem(n,y);
title('Unipolar sawtooth');
xlabel('t');
ylabel('Amplitude');
grid on;