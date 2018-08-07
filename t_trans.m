function [A_transpose] = t_trans(A_tensor)
% transpose a 3-d tensor
[n1, n2, n3] = size(A_tensor);
A_transpose = zeros(n2, n1, n3);
A_transpose(:, :, 1) = A_tensor(:, :, 1)';

for i = 2:n3
    A_transpose(:, :, i) = A_tensor(:, :, n3 + 2 - i)';
end