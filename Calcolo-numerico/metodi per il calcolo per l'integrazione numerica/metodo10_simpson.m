%% metodo numerico per il calcolo di integrali definiti
%% metodo di Simpson ( e krusty il clown)
function I = metodo10_simpson(f, a, b, n)
h = (b - a) / n;
I0 = f(a) + f(b);

%%prima somma
somma1 = 0;
for j = 1: (n/2) - 1
    somma1 = somma1 + f(a + 2 * j * h);
end
%%seconda somma
somma2 = 0;
for j = 1: (n/2)
    somma2 = somma2 + f(a + (2*j-1) * h);
end

I = (h / 3) * (I0 + 2 * somma1 + 4 * somma2);
end