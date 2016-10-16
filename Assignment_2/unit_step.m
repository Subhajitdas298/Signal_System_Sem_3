% assignment 2 question 3
clc;
clear all;
close all;

%set variables
n = -8:1:11;

%unit step function
y = [zeros(1,8) ones(1,12)];
subplot(3,1,1);
stem(n, y);
title('Unit step');
xlabel('n');
ylabel('u(n)');
grid on;

%advanced unit step function u(n+6)
y = [zeros(1,2) ones(1,18)];
subplot(3,1,2);
stem(n, y);
title('Advanced unit step');
xlabel('n');
ylabel('u(n+6)');
grid on;

%delayed unit step function u(n-9)
y = [zeros(1,17) ones(1,3)];
subplot(3,1,3);
stem(n, y);
title('Delayed unit step');
xlabel('n');
ylabel('u(n-9)');
grid on;