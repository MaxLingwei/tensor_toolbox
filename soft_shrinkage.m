function [X] = soft_shrinkage(Y, lambda)
[~, S, ~] = svd(Y, 'econ');
X = S .* ((S - lambda) > 0);