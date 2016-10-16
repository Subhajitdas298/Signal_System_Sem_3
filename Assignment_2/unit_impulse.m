% assignment 2 question 4
clc;
clear all;
close all;

%set variables
n = -8:1:11;

%impulse function d(n+4)
y = [zeros(1,4) ones(1,1) zeros(1,15)];
subplot(2,1,1);
stem(n, y);
title('d(n+4)');
xlabel('n');
ylabel('d(n+4)');
grid on;

%impulse function d(n-3)
y = [zeros(1,11) ones(1,1) zeros(1,8)];
subplot(2,1,2);
stem(n, y);
title('d(n-3)');
xlabel('n');
ylabel('d(n-3)');
grid on;