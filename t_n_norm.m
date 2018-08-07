function [Nuclear_norm] = t_n_norm(A_tensor)
% get the nuclear norm of a 3-d tensor
Nuclear_norm = 0;
A_f = fft(A_tensor, [], 3);
[~, ~, n3] = size(A_tensor);

for i = 1:n3
    Nuclear_norm = Nuclear_norm + trace(sqrt(A_f(:, :, i)' * A_f(:, :, i)));
end
Nuclear_norm = Nuclear_norm / n3;