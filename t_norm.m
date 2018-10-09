function [X_norm] = t_norm(X0)
% normolize the original data X0

[n1, N, n3] = size(X0);
Xm = reshape(permute(X0, [1, 3, 2]), [n1 * n3, N]);
result = Xm ./ sqrt(sum(Xm .* Xm));
X_n = reshape(result, [n1, n3, N]);
X_norm = permute(X_n, [1, 3, 2]);