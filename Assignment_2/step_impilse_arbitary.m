% assignment 2 question 5
clc;
clear all;
close all;

s = input('Enter shift for d(n+s) and u(n+s): ');
limit = (abs(s)+5);
n = -limit:1:limit;

%impulse function
y = [zeros(1,limit-s) ones(1,1) zeros(1,limit+s)];
subplot(2,1,1);
stem(n, y);
title('Impulse');
xlabel('n');
ylabel('d(n+s)');
grid on;

%unit step function
y = [zeros(1,limit-s) ones(1,limit+s+1)];
subplot(2,1,2);
stem(n, y);
title('Unit step');
xlabel('n');
ylabel('u(n+s)');
grid on;