function [Tensor_inv] = t_inv(Tensor) 
Tensor_fft = fft(Tensor, [], 3);
tensor_inv_fft = zeros(size(Tensor_fft));
for i = 1:3
    tensor_inv_fft(:, :, i) = inv(Tensor_fft(:, :, i));
end
Tensor_inv = ifft(tensor_inv_fft, [], 3);
end