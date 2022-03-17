A = [4 2 1; 2 4 2; 1 2 4];
b = [7; 8; 7];
x0 = [1.1; 1.1; 1.1];
tol = 1e-5;
n = 100;
[xk, r, i] = metodo8_jacobi(A, b, tol, x0, n)
