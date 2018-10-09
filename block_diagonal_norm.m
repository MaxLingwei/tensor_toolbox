function [Knorm] = block_diagonal_norm(X, k)
% if X is k block diagonal, the Knorm should be zero
Lx = diag(X * ones(size(X, 2), 1)) - X;
evalue = eig(Lx);
Knorm = sum(evalue(1:k));
