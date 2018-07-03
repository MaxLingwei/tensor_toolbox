function [C_tensor] = t_product(A_tensor, B_tensor)

circ_A = [A_tensor(:, :, 1), A_tensor(:, :, 3), A_tensor(:, :, 2);
          A_tensor(:, :, 2), A_tensor(:, :, 1), A_tensor(:, :, 3);
          A_tensor(:, :, 3), A_tensor(:, :, 2), A_tensor(:, :, 1)];
MatVec_B = [B_tensor(:, :, 1); B_tensor(:, :, 2); B_tensor(:, :, 3)];
temp_AB = circ_A * MatVec_B;
[a, ~] = size(temp_AB);
temp1 = temp_AB(1:a / 3, :);
temp2 = temp_AB(a / 3 + 1: 2 * a / 3, :);
temp3 = temp_AB(2 * a / 3 + 1: end, :);
C_tensor(:, :, 1) = temp1;
C_tensor(:, :, 2) = temp2;
C_tensor(:, :, 3) = temp3;
end