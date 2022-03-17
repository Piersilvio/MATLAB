
f = @(x) exp(x) - 1 - cos(x);
x0 = .5;
h = 1e-6;
tol = 1e-8;
n = 100;
[xk, r, i] = metodo6_quasinewton(f, x0, h, tol, n);
fprintf("soluzione: %.4f\n", xk);
fprintf("residuo: %.4f\n", r);
fprintf("iterate: %d\n", i);