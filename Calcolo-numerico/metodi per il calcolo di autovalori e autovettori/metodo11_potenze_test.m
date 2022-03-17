clc;
A = [13 2 0; 2 1 3; 0 3 22];
x0 = [1; 1; 1];
tol = 1e-6;
n = 100;

[lambda, i] = metodo11_potenze(A, x0, tol, n);
fprintf("soluzione: %f\n", lambda);
fprintf("iterate: %d\n", i);