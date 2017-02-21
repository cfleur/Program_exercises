%-- 23.11.2015 17:06 --%

cd
3*2^4
(3*2)^4
commandhistory
3-2
3-2^4
3-2
3^4-3
8/2^4
2^4\8
8^4/2
x = [3 4 7 11]
x = 3:8
x = 8:-1:0
x = 8:-2:0
x = 8:-3:-8
xx = [ 8 7 6 5 4 3 2 1 0];
xx
x = linspace(0,1,11)
x = 0:0.1:1
x = 8:-0.1:1
x = 8:1:1
y = linspace(0,1);
length(x)
length(y)
size(x)
size y(y)
size(y)
y(3)
y(1:12)
y([3 6 9 12])
x'
x´
x
x'
z = [ 1+2*i 4-3*i ]
z'
z.'
z'
z.'
3*[1 2 5]
help help
help length
help size
help linspace
help logspace
help clc
help clear
help who
who
help whos
whos
help efun
help elfun
orange
orangecleaner
orange
orangecleaner
% orangecleaner = n = 101;
u = linspace(0,2*pi,n);
v = cos(u);
plot(u,v)
%orange cleaner =
n = 101;
u = linspace(0,2*pi,n);
v = cos(u);
plot(u,v)
plot(u,v)
n = 101;
u = linspace(0,2*pi,n);
v = cos(u);
plot(u,v)
xlabel('u'); ylabel('v'); title('v = cos(u)')
orangecleaner
end = 1
End = 1
pi = 3
pi
clear pi
pi
NaN
nan
diary ThisClassIsGreat
g*h
e*f
diary off
diary ThisClassIsGreat
f*e
diary
help diary
get(0,'Diary')
diary number2
disp('The disp command writes text')
t = logspace(-3,6,10);
x = 0.1234567890123456*t;
format short
t
x
format long
x
format long e
x
format short e
x
format short g
x
format long g
x
disp(sprintf('The 10th element of x is x(10) = %6.3f',x(10)))
disp(sprintf('The 10th element of x is x(10) = %10.3f',x(10)))
disp(sprintf('The 10th element of x is x(10) = %12.3f',x(10)))
diary off
disp(sprintf('The 10th element of x is x(10) = %8.3e',x(10)))
disp(sprintf('The 10th element of x is x(10) = %8.12e',x(10)))
disp(sprintf('The 10th element of x is x(10) = %24.15e',x(10)))
disp(sprintf('The 10th element of x is x(10) = %1.4g',x(10)))
disp(sprintf('The 10th element of x is x(10) = %16.12',x(10)))
disp(sprintf('The 10th element of x is x(10) = %16.12g',x(10)))
disp(sprintf('The 10th element of x is x(10) = %24.15g',x(10)))
for <list-of-values>
for <list-of-values> <statements-to-be-done> end
for k = 1:5
disp(sprintf('%8.5e',x(k)))
end
for k = 1:5
disp(sprintf('%18.5e',x(k)))
end
total = 0
for k = 1:10
total 0
total = total + x(k);
disp(sprintf('Total for k=%2.0f is %15.8g',k,sum))
end
total = 0
for k = 1:10
total = total + x(k);
disp(sprintf('Total for k=%2.0f is %15.8g',k,sum))
end
sum(x)
disp(' ')
disp(' k            t               x')
disp ('------------------------------')
for k=1:10
disp(sprintf('%2.0f       %7.3g          %7.7e',k,t,(k),x(k)))
end
disp(' ')
disp(' k            t               x')
disp ('------------------------------')
for k=1:10
disp(sprintf('%2.0f       %7.3g          %7.7e',k,t,(k),x(k)))
end
tabLE1
%-- 8.12.2015 16:49 --%
g = [1; 2; 3; 4]
g = [1 2 3 4; 5 6 7 8; 9 10 11 12]
g - 2
2*g-1
h = [1 1 1 1; 2 2 2 2; 3 3 3 3]
g-h
g*h
g.*h
g./h
h.\g
g.\h
h./g
g*h'
g'*h
e = [1 2 3; 4 5 6; 7 8 0]
f = [9 8 7; 6 5 4; 3 2 1]
e*f
f*e
q = rand(3)
A^2
q^2
f^2
f^2 - f*f
f^2 - f*g
f^2 - f*e
f^2 - f.*g
f^2 - f'*g
f^2 - h*g'
f^2 - h*g
q.^2
q.^2 -f*e
q.^2 - f*e
ones(3)
zeros(2,5)
size(zeros(2,5))
size(g)
ones(size(g))
eye(4)
eye(2,4)
eye(4,2)
help eye
eye('like',p)
help size
zeros(3)
size(zeros(3))
rand(3)
b= eye(3)
rand(size(b))
rand(size(zeros(3)))
v = eye(5)
rand(size(v))
a = 1:4
diag(a)
help diag
diag(a,1)
diag(a,-2)
%8.3
d = exp(1)
d*ones(3,4)
d+zeros(3,4)
d(ones(3,4))
d*zeros(3,4)
d+ones(3,4)
repmat(d,3,4)
help repmat
f = exp(5)
repmat(f,1,2)
c = [1 2 3 4; 5 6 7 8; 9 10 11 12];
c(3,2)
c(:,2)
c = [1 2 3 4; 5 6 7 8; 9 10 11 12]
c(2,:)
c(1:2,:)
c(2,:) = [7 6 5 4]
c(2,:) = [8 7 6 5]
c(:,2)
c(:,2) = [0; 0; 0;]
%9
A = rand(5)
b = rand(5,1)
det(A)
inv(A)
x = inv(A)*b
size(x)
size(b)
size(A)
x2 = A\b
spy(A)
help spy
D = diag(5:1)
spy(D)
L = tril(A)
help tril
U = triu(A)
suze(U)
size(U)
spy(U)
%10
rat_fun_apx_at_e
Ratfun_apx_at_e
RatfunV_apx_at_e
Ratfun_apx_at_e
RatfunV_apx_at_e
n = 150;
x = linspace(0,1,n);
xsqd = x.^2;
num = 1-(3/5)*x+(3/20)*xsqd -(x/60).*xsqd;
den = 1+(2/5)*x+(1/20)*xsqd;
y = num./den;
plot(x,y,x,exp(-x))
xlabel('x');
title('Rational function approximation to e^{-x}')
legend('Rational Function','e^{-x}',1)
plot(x,y,x,exp(-x))
xlabel('x');
title('Rational function approximation to e^{-x}')
legend('Rational Function','e^{-x}',1)
legend('Rational Function','e^{-x}',0)
legend('Rational Function','e^{-x}',-1)
plot(x,y,x,exp(-x))
xlabel('x');
title('Rational function approximation to e^{-x}')
legend('Rational Function','e^{-x}',-1)
x = linspace{0,1};
y = 1 - x + x.^2/2 - x.^3/6;
exact = exp(-x);
figure
plot(x,y)
x = linspace{0,1};
y = 1 - x + x.^2/2 - x.^3/6;
exact = exp(-x);
x = linspace[0,1];
x = linspace(0,1)
x = linspace(0,1);
y = 1 - x + x.^2/2 - x.^3/6;
exact = exp(-x);
figure
plot(x,y)
figure
plot(x,exact)
hold on
plot(x,y,'r-.')
hold off
hold on
RatfunV_apx_at_e
hold off
hold on
RatfunV_apx_at_e
hold off
close all
