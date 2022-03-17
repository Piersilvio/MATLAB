%% metodo numerico per il calcolo di sistemi lineari
%% metodo di Gauss-Seidel
function[xk, i, r] = metodo7_gaussseidel(A, b, tol, x0, n)
L = tril(A);
U = triu(A,1);
for i = 1:n
    xk = L\ (b - U * x0);
    e_n = norm(xk - x0, "inf") / norm(xk,"inf");
    if (e_n < tol)
        r = norm(A*xk - b, "inf");
        return
    end
    x0 = xk;
end
r = norm(A*xk - b, "inf");
end