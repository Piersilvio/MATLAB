%% metodo numerico per il calcolo degli zeri di funzioni non lineari
%% metodo di Traub
function[xk, i] = metodo2_traub(f, f_primo, x0, tol, n)
for i = 0:n
    fx = f(x0);
    fx_primo = f_primo(x0);
    
    d1 = fx / fx_primo;
    if(d1 == 0)
        return 
    end
    yk = x0 - d1;
    d2 = f(yk) / fx_primo;
    if(d1 == 0)
        return 
    end
    xk = yk - d2;
    e_rel = abs(xk - x0) / abs(xk);
    if(e_rel < tol)
        return
    end
    x0 = xk;
end
i = -1;
end