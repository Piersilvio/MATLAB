%% metodo numerico per il calcolo degli zeri di funzioni non lineari
%% metodo di Halley
function[xk, i, r] = metodo3_halley(f, f_primo, f_secondo, x0, tol, n)

for i = 1:n
    fx = f(x0);
    fx_primo = f_primo(x0);
    fx_secondo = f_secondo(x0);

    p = 2 * (fx_primo)^2;
    d = p - fx * fx_secondo;
    if(d == 0)
        if(i == 1)
            r = f(x0);
        else
            r = f(xk);
        end
        fprintf("Iterazione terminata! divisione per 0\n");
        return
    end
    p1 = (2 * fx) * fx_primo;
    xk = x0 - (p1 / d);
    e_Rel = abs(xk - x0) / abs(xk);

    if(e_Rel < tol)
        r = f(xk);
        return
    end
    x0 = xk;
end
i = -1;
r = f(xk);
end