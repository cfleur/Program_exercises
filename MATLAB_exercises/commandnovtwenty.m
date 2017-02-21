%-- 20.11.2015 8:08 --%

format compact
format short g
f = @(x) x.^2

f(2)
f[0:10;f(0:10)]
f(0:1)
f(0:10)
[0:10;f(0:10)]
g = @(u) exp1./u
g(1)
g = @(u) exp1
g(1)
g = @(u) exp.1
g = @(u) exp(1)
g(1)
g = @(u) exp(1)./u
g(1)
g(2)
g(0)
exp x.0.5
exp(0.5)
g = @(u) exp(1)/.u
g = @(u) exp(1./u)
g(2)
% now it works
g[1:10;g(1:10)]
[1:10;g(1:10)]
x = linespace (1,10,101)
x = linspace (1,10,101)
figure (1), plot (x,g(x))
cd