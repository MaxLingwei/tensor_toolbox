function [X] = soft_shrinkage(Y, lambda)
% X = argmin lambda ||X||_* + 1/2 ||X - Y||^2
[U, S, V] = svd(Y, 'econ');
S = S - diag(lambda * ones(length(S), 1));
S = S .* (S > 0);
X = U * S * V';