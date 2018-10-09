function [Tensor_inv] = t_inv(Tensor) 
% calculate the inverse of a 3-order tensor
[~, ~, n3] = size(tensor);
Tensor_fft = fft(Tensor, [], 3);
tensor_inv_fft = zeros(size(Tensor_fft));
for i = 1:n3
    tensor_inv_fft(:, :, i) = inv(Tensor_fft(:, :, i));
end
Tensor_inv = real(ifft(tensor_inv_fft, [], 3));
end