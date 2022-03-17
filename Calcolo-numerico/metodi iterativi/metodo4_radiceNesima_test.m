
S = 286797;
n = 5;
tol = 1e-10;
nmax = 100;
[xk, i] = metodo4_radiceNesima(S, n, tol, nmax);
fprintf("\nsoluzione: %f\n", xk);
fprintf("iterate: %d \n", i);