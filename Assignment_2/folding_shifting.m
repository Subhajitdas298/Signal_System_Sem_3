% assignment 2 question 3
clc;
clear all;
close all;

% set variables
x = [1 2 3 4 5];
n = -4:1:4;

% normal order
y = [zeros(1,4) x];
subplot(2,2,1);
stem(n, y);
title('Normal order');
xlabel('n');
ylabel('x(n)');
grid on;

% folded order
subplot(2,2,2);
stem(-n, y);
title('Folded order');
xlabel('n');
ylabel('x(-n)');
grid on;

% shifted order
s = input('Enter shift : ');
limit = (abs(s)+4);
n = -limit:1:limit;
y = [zeros(1,limit-s) x zeros(1,limit+s-4)];
subplot(2,2,3);
stem(n, y);
title('Shifted order');
xlabel('n');
ylabel('x(n+s)');
grid on;