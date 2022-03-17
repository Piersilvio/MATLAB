%% metodo numerico per il calcolo degli zeri di funzioni non lineari
%% metodo quasi-Newton
function[xk, r, i] = metodo6_quasinewton(f, x0, h, tol, n)
if(h > 0)
    for i = 1:n
        fx = f(x0);
        incremento = f(x0 + h) - fx;
        if(incremento == 0)
            if(i == 1)
                r = fx;
            else
                r = f(xk);
            end
            fprintf("\iterazione terminata!\n");
            return
        end
        xk = x0 - h * ( fx / incremento );
        e_r = abs(xk - x0) / abs(xk);
        if (e_r < tol)
            r = f(xk);
            return
        end
        x0 = xk;
    end
    i = -1;
    r = f(xk);
end
end