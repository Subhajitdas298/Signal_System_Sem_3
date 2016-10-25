%% time reversal function
function [n_rev,seq_rev] = timereverse(n,seq)
%This function generated time reversed sequence
n_rev = fliplr(-n); %reverse -n to ascending order
seq_rev = fliplr(seq);  %reverse seq
end