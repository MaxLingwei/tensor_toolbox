function [result] = inn_product(A, B)
C = A .* B;
result = sum(C(:));