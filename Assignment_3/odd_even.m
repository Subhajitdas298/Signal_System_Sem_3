% assignment 3 q 6
% clear 
clc;
clear;
close all;

% contimuious signal
% set t
syms f(t);
% set time
time = 0:79;

% take signal
f(t) = input('Enter f(t) : ');

% generate f(time) and f(-time)
y1 = f(time);
y2 = f(-time);

% print original signal
subplot(3,2,1);
plot(time,y1);
title('Continuious signal');
xlabel('t');
ylabel('f(t)');
grid on;

% find odd
fodd = (y1-y2)/2;
subplot(3,2,3);
plot(time,fodd);
title('Odd part');
xlabel('t');
ylabel('fodd');
grid on;

% find even
feven = (y1+y2)/2;
subplot(3,2,5);
plot(time,feven);
title('Even part');
xlabel('t');
ylabel('feven');
grid on;

% clear previous data
clear;

% discrete signal

% take signal
seq = input('Enter sequence f(n) : ');
i = round(input('Index of seq (starting from 1) : '));

% generate f(n) or y1
l_no = i-1;
r_no = length(seq)-i;
max_no = max(l_no,r_no);
y1 = [zeros(1,max_no-l_no) seq zeros(1,max_no-r_no)];
% set time
n = -max_no:max_no;
% generate f(-n) or y2
y2 = fliplr(y1);

% print original signal
subplot(3,2,2);
stem(n,y1);
title('Discrete sequence');
xlabel('n');
ylabel('f(n)');
grid on;

% find odd
fodd = (y1-y2)/2;
subplot(3,2,4);
stem(n,fodd);
title('Odd part');
xlabel('n');
ylabel('fodd');
grid on;

% find even
feven = (y1+y2)/2;
subplot(3,2,6);
stem(n,feven);
title('Even part');
xlabel('n');
ylabel('feven');
grid on;