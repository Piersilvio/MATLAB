%% metodo numerico per il calcolo di autovalori di modulo massimo di una 
%% matrice quadrata
%% metodo delle potenze
function[lambda, i] = metodo11_potenze(A, x0, tol, n)
v0 = 0;
for i = 1:n
    yk = x0 / norm(x0, 2);
    xk = A * yk;
    vk = yk' * xk;

    if(abs(vk - v0) < tol * abs(vk))
        lambda = vk;
        return
    end
    x0 = xk;
    v0 = vk;
end
end