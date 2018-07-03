close all;
clear all;

addpath('toolbox\');
addpath('tensor_toolbox\');

A_tensor = imread('beads_RGB.bmp');
A_tensor = double(A_tensor) / 255.0;

D_tensor = fft(A_tensor, [], 3);
U_tensor = [];
V_tensor = [];
S_tensor = [];
for i = 1:3
    [u, s, v] = svd(D_tensor(:, :, i));
    U_tensor(:, :, i) = u;
    S_tensor(:, :, i) = s;
    V_tensor(:, :, i) = v;
end
U = ifft(U_tensor, [], 3);
V = ifft(V_tensor, [], 3);
S = ifft(S_tensor, [], 3);

unfold_A = cell(3, 1);
unfold_S = cell(3, 1);
for i = 1:3
    unfold_A{i} = Unfold(A_tensor, size(A_tensor), i);
    unfold_S{i} = Unfold(S, size(S), i);
end

for i = 1:3
    svalueA = svd(A_tensor(:, :, i));
    svalueS = diag(S(:, :, i));
    figure(i);
    plot(svalueA, 'r');
    hold on;
    plot(svalueS, 'b');
end

for i = 1:3
    svalueA = svd(unfold_A{i}, 'econ');
    svalueS = svd(unfold_S{i}, 'econ');
    figure(i + 3);
    plot(svalueA, 'r');
    hold on;
    plot(svalueS, 'b');
end