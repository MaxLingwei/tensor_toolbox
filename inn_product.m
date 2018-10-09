function [result] = inn_product(A, B)
% get the inner product of matrics or tensors
C = A .* B;
result = sum(C(:));