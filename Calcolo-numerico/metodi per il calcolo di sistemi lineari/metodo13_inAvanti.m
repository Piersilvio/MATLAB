%% metodo numerico per la risoluzione di sistemi lineari 
%% algoritmo di sostituzione in avanti
function[xk] = metodo13_inAvanti(A, b)
n = 4;
xk = zeros(n, 1); %%inizializzo il vet. soluzione
xk(1) = b(1) / A(1, 1);
for i = 2:n
    d = 1 / A(i, i);
    %% somma
    s = 0;
    for j = 1: i - 1
        s = s + A(i ,j) * xk(j);
    end
    xk(i) = d * (b(i) - s);
end
end
