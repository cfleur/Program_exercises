n = 150;
x = linspace(0,1,n);
y = zeros(1,n);
for k = 1:n
    y(k) = (1-(3/5)*x(k)+(3/20)*x(k)^2 -(x(k)/60)*x(k)^2)/(1+(2/5)*x(k)+(1/20)*x(k)^2)
end
plot(x,y)
xlabel('x'), ylabel('y');
title('Rational function approximation to e^{-x}')
