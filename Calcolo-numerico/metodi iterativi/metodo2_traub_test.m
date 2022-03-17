
f = @(x) 1 - ( x^2 / 2) - x^3;
f_primo = @(x) -x - 3*(x)^2;
tol = 1e-10;
n = 100;
x0 = .99;

[xk, i] = metodo2_traub(f, f_primo, x0, tol, n);
fprintf("\nsoluzione: %.4f\n", xk);
fprintf("iterazioni: %d\n", i);