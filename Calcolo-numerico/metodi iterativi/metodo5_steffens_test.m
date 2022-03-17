
f = @(x) sin(x) - log(x);
tol = 1e-8;
x0 = 2;
n = 100;
[xk, res, i] = metodo5_steffens(f, x0, tol, n);
fprintf("\nsoluzione: %.4f\n", xk);
fprintf("residuo: %f", res);
fprintf("\niterate: %d\n", i);