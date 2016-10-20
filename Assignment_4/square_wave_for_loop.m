% assignment 4 q 2
%% clear
clc;
clear all;
close all;

%% generating sequences
% take frequency
f = abs(input('Frequency : '));
% calculate no of points for high or low per cycle
% 50% duty cycle is taken
np = round((1/f)/2);

% take no of cycles to generate
cycles = round(abs(input('No of cycles to generate : ')));

% single cycle of wave
% sampling frequency is signal frequency
uni_cycle = [ones(1,np) zeros(1,np)];
bi_cycle = [ones(1,np) (-1*ones(1,np))];

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
n = 0:length(uni)-1;

%% plot actual waves
% unipolar
subplot(2,1,1);
stem(n,uni);
title('Unipolar');
xlabel('n');
ylabel('Amplitude');
grid on;

% bipolar
subplot(2,1,2);
stem(n,bi);
title('Bipolar');
xlabel('n');
ylabel('Amplitude');
grid on;