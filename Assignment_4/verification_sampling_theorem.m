% assignment 4 q 5
%% clear
clc;
clear all;
close all;

%% user input wave data
% take frequency
fm = input('Enter frequency : ');
% take amplitude
a = input('Enter amplitude : ');

%% plot actual wave
% set n
t = 0:200;
s(1)=subplot(4,1,1);
plot(t,a*sin(2*pi*fm*t));
title('Actual signal');
xlabel('t');
ylabel('Amplitude');
grid on;

%% plot sampled sequences
% array for fs
fs = [1.5*fm,2*fm,5*fm];

for i = 2:4
    s(i)=subplot(4,1,i);
    % set samples
    n = 0:1/fs(i-1):200;  % sampling period = 1/sampling freq
    stem(n,a*sin(2*pi*fm*n));
    xlabel('t');
    ylabel('Amplitude');
    grid on;
end

% title every subplot
title(s(2),'fs < 2fm (fs = 1.2*fm)');
title(s(3),'fs = 2fm');
title(s(4),'fs > 2fm (fs = 5*fm)');

% link all graph axis
linkaxes([s(1),s(2),s(3),s(4)],'xy');