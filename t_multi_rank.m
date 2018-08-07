function [multi_rank] = t_multi_rank(A_tensor)
% get the multi_rank of a 3-d tensor
[~, ~, n3] = size(A_tensor);
multi_rank = zeros(n3);
A_f = fft(A_tensor, [], 3);

for k = 1:n3
    multi_rank(k) = rank(A_f(:, :, k));
end