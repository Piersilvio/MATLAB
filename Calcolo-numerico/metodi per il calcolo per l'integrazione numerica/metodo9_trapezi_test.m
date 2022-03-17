clear;
clc;
a = 0;
b = 1;
n = 4;
f = @(x) sin(pi * x);
nmax = 10;
I0 = metodo9_trapezi(f, a, b, n);
for i = 1:nmax
    n = n * 2;
    I = metodo9_trapezi(f, a, b, n);
    if(abs(I - I0) < 1e-3)
        fprintf("Soluzione: %.4f\n", I);
        return
    end
    I0 = I;
end