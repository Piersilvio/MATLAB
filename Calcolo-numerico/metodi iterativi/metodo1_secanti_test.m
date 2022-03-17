
f = @(x) (sin(x) / x) -x;
tol = 1e-10;
x0 = 1;
x1 = .9;
n = 100;
[xk, i] = metodo1_secanti(f, x1, x0, tol, n);
fprintf("\nsoluzione: %.2f\n", xk);
fprintf("passi di iterazione: %d\n", i);
