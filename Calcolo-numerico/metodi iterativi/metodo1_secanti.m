
function[xk, i] = metodo1_secanti(f, x1, x0, tol, n)

for i = 0:n
    fx0 = f(x0); %% x0 = xk-2
    fx1 = f(x1); %% x1 = xk-1
    d = fx1 - fx0;

    if(d == 0)
        fprintf("iterazione terminata! divisione per 0\n");
        return
    end

    xk = x1 - ( fx1*(x1 - x0) / d);
    e_rel = abs(x1 - x0) / abs(x1);

    if(e_rel < tol)
        return
    end
    x0 = x1;
    x1 = xk;
end
i = -1;
end
