%% metodo numerico per il calcolo della radice n-esima
function[xk, i] = metodo4_radiceNesima(S, n, tol, nmax)
if (S > 0)
    x0 = S;
    for i = 0:nmax
        frazione = S / (x0)^(n - 1);
        d = 1 / n;
        if((d == 0) & (frazione == 0))
            fprintf("iterazione terminata!\n");
            return
        end
        xk = d * ((n - 1) *  x0 + frazione);
        e_rel = abs(xk - x0) / abs(xk);
        if(e_rel < tol)
            return
        end
        x0 = xk;
    end
    i = -1;
end
end