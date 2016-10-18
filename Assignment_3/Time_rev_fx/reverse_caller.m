% assignment 3 q 7
%% clear
clc;
clear all;
close all;

%% take sequence from user
seq = input('Enter sequence : ' );
origin = round(abs(input('Enter origin index (starting from 1) : ')));
% set time range
n = -(origin-1):(length(seq)-origin);

% plot actual seq
subplot(2,1,1);
stem(n,seq);
title('Actual Discrete Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

%% get reverse sequence by function call
[n_rev,seq_rev] = timereverse(n,seq);

%% plot reverse seq
subplot(2,1,2);
stem(n_rev,seq_rev);
title('Reversed Discrete Signal');
xlabel('n');
ylabel('Amplitude');
grid on;