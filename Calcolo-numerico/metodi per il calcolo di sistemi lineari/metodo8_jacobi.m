%% metodo numerico per il calcolo di sistemi lineari
%% metodo di Jacobi
function[xk, r, i] = metodo8_jacobi(A, b, tol, x0, n)
D = triu(tril(A));
R = A - D;
for i = 0:n
    xk = D \ (b - R * x0);
    e_r = norm(xk - x0, "inf") / norm(xk, "inf");
    if e_r < tol
        r = norm(A * xk - b, "inf");
        return
    end
    x0 = xk;
end
r = norm(A * xk - b, "inf");
end