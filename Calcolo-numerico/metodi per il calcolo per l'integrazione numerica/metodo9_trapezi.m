%% metodo numerico per il calcolo di integrali definiti
%% metodo dei trapezi
function I = metodo9_trapezi(f, a, b, n)
h = (b - a) / n;
I0 = f(a) + f(b);
somma = 0;
for j = 1:n - 1
    somma = somma + f(a + j*h);
end
I = (h / 2)*(I0 + 2 * somma);
end