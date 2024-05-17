% Question 1
A = randn(6, 8);
disp(A);

%Question 2
%zeros(4):
%Matrix: 4x4
%Type: double (floating-point numbers)
Z = zeros(4);
disp(Z);
%false(4):
%Matrix: 4x4
%Type: logical false values
F = false(4);
disp(F);

%Question 3
B = randn(5, 4);
disp('Original matrix B:');
disp(B);

B_transposed = B';
disp('Transposed matrix B:');
disp(B_transposed);

%Question 4
m = [9 2 6; 23 3 12; 6 6 16];
n = [5 22 5; 26 59 16; 24 0 16];

simple_multiplication = m .* n;
disp('simple_multiplication:');
disp(simple_multiplication);

matrix_multiplication = m * n;
disp('Matrix (inner) multiplication:');
disp(matrix_multiplication);

remainder_matrix = mod(m, n);
disp('remainder_matrix');
disp(remainder_matrix);
