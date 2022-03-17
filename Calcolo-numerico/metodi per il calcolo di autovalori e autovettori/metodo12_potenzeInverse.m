%% metodo numerico per il calcolo di autovalori di modulo minimo di una 
%% matrice quadrata
%% metodo delle potenze Inverse
function[minLambda, i] = metodo12_potenzeInverse(A, x0, tol, n)
v0 = 0;
for i = 1:n
    yk = x0 / norm(x0, 2);
    xk = A \ yk;
    vk = yk' * xk;
    if abs(vk - v0) < tol * abs(vk)
        minLambda = 1 / vk;
        return
    end
    v0 = vk;
    x0 = xk;
end
end