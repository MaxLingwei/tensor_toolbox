function [tubal_rank] = t_tubal_rank(A_tensor)
% get tubal_rank of a 3-d tensor
[~, S_t, ~] = t_svd(A_tensor);
S = S_t(:, :, 1);
tubal_rank = sum(diag(S) ~= 0);