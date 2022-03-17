%% metodo numerico per il calcolo degli zeri di funzioni non lineari
%% metodo di Steffens
function[xk, res, i] = metodo5_steffens(f, x0, tol, n)
for i = 1:n
    fx = f(x0);
    quadrato = (fx)^2;
    d = (f(x0 + fx) - fx);
    if(d == 0)
        fprintf("iterazione terminata!\n");
         res = f(xk);
        return
    end
    xk = x0 - (quadrato / d);
    e_R = abs(xk - x0) / abs(xk);
    if(e_R < tol)
        res = f(xk);
        return
    end
    x0 = xk;
end
i = -1;
res = f(xk);
end