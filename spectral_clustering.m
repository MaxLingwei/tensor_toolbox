function [C] = spectral_clustering(W, k)
degrees = sum(W, 2);
D = diag(degrees);
L = D - W;
[V, ~] = eigs(L, k, 'SA');
C = kmeans(V, k);