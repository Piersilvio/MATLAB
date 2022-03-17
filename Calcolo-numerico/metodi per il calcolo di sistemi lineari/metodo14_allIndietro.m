%% metodo numerico per la risoluzione di sistemi lineari 
%% algoritmo di sostituzione all'indietro
function[x] = metodo14_allIndietro(A, b)
n = length(A);
x = zeros(n, 1);
x(n) = b(n) / A(n, n);
for i = n - 1: -1: 1
    d = 1 /A(i, i);
    %%somma
    s = 0;
    for j = i + 1:n
        s = s + A(i, j) * x(j);
    end
    x(i) = d * (b(i) - s);
end
end