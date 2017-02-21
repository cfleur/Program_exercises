n = 150;
x = linspace(0,1,n);
xsqd = x.^2;
num = 1-(3/5)*x+(3/20)*xsqd -(x/60).*xsqd;
den = 1+(2/5)*x+(1/20)*xsqd;
y = num./den;
plot(x,y,x,exp(-x))
xlabel('x');
title('Rational function approximation to e^{-x}')
legend('Rational Function','e^{-x}',0)
