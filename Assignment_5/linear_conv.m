% ass 5 q 1
%% clear
clc
clear all
close all

%% setting sequences
x = [1,2,1,1,2];
h = [1,1,1,2,2];
n = 0:4; 

%% stem original sequences
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('x[n]');
grid on;

subplot(3,1,2);
stem(n,h);
xlabel('n');
ylabel('h[n]');
grid on;

%% generate and stem convolution
subplot(3,1,3);
y = conv(x,h);
n = 0:length(y)-1;
stem(n,y);
xlabel('n');
ylabel('x[n] \ast h[n]');
grid on;