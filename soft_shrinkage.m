function [X] = soft_shrinkage(Y, lambda)
[U, S, V] = svd(Y, 'econ');
S = S - diag(lambda * ones(length(S), 1));
S = S .* (S > 0);
X = U * S * V';