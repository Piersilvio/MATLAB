clc;
f = @(x) tan(x);
a = 0; 
b = pi / 4;
n = 4;
tol = 1e-4;
nmax = 10;

I0 = metodo10_simpson(f, a, b, n);
for i = 1:nmax
    n = n * 2;
    I = metodo10_simpson(f, a, b, n);
    if abs(I - I0) < tol
        fprintf("soluzione: %.4f\n", I);
        return
    end
    I0 = I;
end
