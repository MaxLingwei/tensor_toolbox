function [U_t, S_t, V_t] = t_svd(A_t)
% calculate the t_svd of a 3-d tensor
U_t= [];
V_t = [];
S_t = [];
D_t = fft(A_t, [], 3);
[n1, n2, n3] = size(A_t);

for i = 1:n3
    [U, S, V] = svd(D_t(:, :, i), 'econ');
    %[U, S, V] = svd_beta(D_t(:, :, i), 1e-9);
    U_t(:, :, i) = U;
    S_t(:, :, i) = S;
    V_t(:, :, i) = V;
end
U_t = real(ifft(U_t, [], 3));
S_t = real(ifft(S_t, [], 3));
V_t = real(ifft(V_t, [], 3));