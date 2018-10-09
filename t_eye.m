function [Tensor_eye] = t_eye(Tensor_input)
% generate an eye tensor with the size of Tensor_input

Tensor_eye = zeros(size(Tensor_input));
Tensor_eye(:, :, 1) = diag(diag(ones(size(Tensor_input, 1))));
end