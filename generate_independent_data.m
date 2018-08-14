function [X] = generate_independent_data(D, r, m, n)
% D: the column length
% r: the rank of each subspace
% m: the number of subspaces
% n: the number of data samples
Xbase = {};
X = [];
for i = 1:m
    Xbase{i} = abs(randn(D, r(i)));
end
for i = 1:m
    X = [X, Xbase{i} * abs(randn(r(i), n))];
end