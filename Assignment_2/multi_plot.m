%assignment 2 question 2
%clear
clc;
clear all;
close all;

%set variables
t = 0:1:49;
a = input('Enter amplitude : ');
f = input('Enter frequency : ');

%sin
y1 = a*sin(2*pi*f*t);
%cos
y2 = a*cos(2*pi*f*t);

%plot
plot(t,y1,'r',t,y2,'b');
grid on;
xlabel('t');
ylabel('sin(wt) and cos(wt)');