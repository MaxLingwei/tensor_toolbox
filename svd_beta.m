function [U, S, V] = svd_beta(X, threshold)
[U_, S_, V_] = svd(X, 'econ');
sdiag = diag(S_ .* (S_ > threshold));
real_r = max(find(sdiag > 0));
S = diag(sdiag(1:real_r));
U = U_(:, 1:real_r);
V = V_(:, 1:real_r);