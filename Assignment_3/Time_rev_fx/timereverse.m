function [n_rev,seq_rev] = timereverse(n,seq)
n_rev = -n;
n_rev = fliplr(n_rev);
seq_rev = fliplr(seq);
end