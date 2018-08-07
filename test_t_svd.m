A_tensor = imread('beads_RGB.bmp');
A_tensor = double(A_tensor) / 255.0;
U_tensor = [];
V_tensor = [];
S_tensor = [];
[U_tensor, S_tensor, V_tensor] = t_svd(A_tensor);
result = t_product(U_tensor, S_tensor);
result = t_product(result, t_trans(V_tensor));
res = result - A_tensor;
figure(1);
imshow(result);
figure(2);
imshow(A_tensor);
figure(3);
imshow(result - A_tensor);

