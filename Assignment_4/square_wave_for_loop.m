% assignment 4 q 2
%% clear
clc;
clear all;
close all;

%% generating sequences
% take frequency
f = abs(input('Frequency : '));
% calculate period
p = (1/f);

% take no of cycles to generate
cycles = round(abs(input('No of cycles to generate : ')));

% single cycle of wave
% sampling frequency is signal frequency
uni_cycle = [ones(1,15) zeros(1,15)];
bi_cycle = [ones(1,15) -ones(1,15)];

% unipolar wave
uni = [];
% bipolar wave
bi = [];

% loop to generate wave
for i = 1:cycles
    % generating unipolar
    uni = [uni uni_cycle];
    % generating bipolar
    bi = [bi bi_cycle];
end

% set n range
n = 0:p/30:cycles*p-p/30;

%% plot actual waves
% unipolar
subplot(2,1,1);
stem(n,uni);
title('Unipolar');
xlabel('t');
ylabel('Amplitude');
grid on;

% bipolar
subplot(2,1,2);
stem(n,bi);
title('Bipolar');
xlabel('t');
ylabel('Amplitude');
grid on;