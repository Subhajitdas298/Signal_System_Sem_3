function [seq,n] = sq_w(freq,duty)
%This function returns a square wave sequence

%% fix duty cycle argument
if nargin < 2
    duty = 50;
end
if (duty < 0) || (duty > 100)
    duty = 50;
end

%% calculate period of input signal
p = 1/freq;

%% generate one cycle for the signal
% taking 30 samples for each period
np = 30;
% calculate no of points per cycle for high
high = round(np*duty/100);
% calculate no of points per cycle for high
low = round(np*(100-duty)/100);
% single cycle of wave
cycle = [ones(1,high) (-1*ones(1,low))];

%% loop to generate the full sequence
% variable to store the sequence
seq = [];   % initialize
% loop to generate wave
for i = 1:4 % 4 cycles
    % generating bipolar
    seq = [seq cycle];
end

%% generate n range
% sampling period = period for a cycle/no samples per cycle
sp = p/np;
n = 0:sp:(length(seq)-1)*sp;
end