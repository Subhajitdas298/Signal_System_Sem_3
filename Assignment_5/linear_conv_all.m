% ass 5 q 1
%% clear
clc
clear all
close all

%% setting sequences
x1 = [1,2,1,1,2];
xo1 = 1;
h1 = [1,1,1,2,2];
ho1 = 1;

x2 = [1,1,1,2,2,2];
xo2 = 4;
h2 = [1,2,3];
ho2 = 1;

x3 = [1,1,1,1,1];
xo3 = 3;
h3 = [1,1,1,1,1];
ho3 = 3;

x4 = [1,1,1,1,1,1,1];
xo4 = 4;
h4 = [1,1,1,1,1];
ho4 = 3;

x = {x1;x2;x3;x4};
xo = [xo1,xo2,xo3,xo4];
h = {h1;h2;h3;h4};
ho = [ho1,ho2,ho3,ho4];

%% loop for all seq
for i=1:4
    j=i;
    % stem original sequences
    s1 = subplot(4,4,j);
    j=j+4;
    n = -(xo(i)-1):(length(x{i})-xo(i));
    stem(n,x{i});
    title(['x_' num2str(i) '[n]']);
    xlabel('n');
    ylabel('Amplitude');
    grid on;
    
    s2 = subplot(4,4,j);
    j=j+4;
    n = -(ho(i)-1):(length(h{i})-ho(i));
    stem(n,h{i});
    title(['h_' num2str(i) '[n]']);
    xlabel('n');
    ylabel('Amplitude');
    grid on;
    
    % generate and stem convolution
    s3 = subplot(4,4,j);
    j=j+4;
    y = conv(x{i},h{i});
    n = -(xo(i)+ho(i)-2):length(y)-(xo(i)+ho(i)-1);
    stem(n,y);
    title(['Discrete x_' num2str(i) '[n] \ast h_' num2str(i) '[n]']);
    xlabel('n');
    ylabel('Amplitude');
    grid on;
    
    % generate and plot convolution
    s4 = subplot(4,4,j);
    plot(n,y);
    title(['Continuous x_' num2str(i) '[n] \ast h_' num2str(i) '[n]']);
    xlabel('t');
    ylabel('Amplitude');
    grid on;
    
    linkaxes([s4,s3,s2,s1],'x');
end