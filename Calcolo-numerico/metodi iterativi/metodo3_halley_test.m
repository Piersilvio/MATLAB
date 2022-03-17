
f = @(x) sin(x) - x^3;
f_primo = @(x) cos(x) - 3*x^2;
f_secondo = @(x) -sin(x) - 6*x;
x0 = 1;
n = 100;
tol = 1e-12;
[xk, i, r] = metodo3_halley(f, f_primo, f_secondo, x0, tol, n);
fprintf("\nsoluzione: %.3f\n", xk);
fprintf("iterate: %d\n", i);
fprintf("residuo: %d\n\n", r);