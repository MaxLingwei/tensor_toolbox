function [tubal_norm] = t_tubal_norm(A_t)
% Calculate the norm by tubal that is 
% W(i, j) = |W_t(i, j, :)|_F
[n1, n2, n3] = size(A_t);
A_m = reshape(A_t, [n1 * n2, n3]);
result = sqrt(sum(A_m .* A_m, 2));
tubal_norm = reshape(result, n1, n2);
