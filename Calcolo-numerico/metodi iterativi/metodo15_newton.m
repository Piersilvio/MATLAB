%% metodo numerico per il calcolo di zeri di funzioni non lineari
%% metodo di newton
function[xk, r, i] = metodo15_newton(f, x0, f_primo, tol, n)
for i = 1:n
    fx = f(x0);
    fx_primo = f_primo(x0);
    if (fx_primo ~= 0) %%verifico se il punto iniziale è zero semplice
        gxk = fx / fx_primo;
        xk = x0 - gxk;
        if abs(xk - x0) < tol * abs(xk)
            r = f(xk);
            return
        end
        x0 = xk;
    else
        r = fx;
        return
    end
end
i = -1;
end