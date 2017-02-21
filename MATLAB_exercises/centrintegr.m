% center point integration
% Function centrintegr approximates the integral of f(x) from a to b using the centerpoint method.
% SYNTAX: I = centrintegr(f,a,b,np)
% where f is the function to be integrated, a and b are the limits. and np
% is the number of centerpoints used.
% Example:
% myfun = @(x) x.^2
% centrintegr(myfun,0,1,100)
function [I] = centrintegr(f,a,b,np)
x = linspace(a,b,np+1);
dx = x(2)-x(1);
xcp = x(1:np)+dx/2;
ycp = feval(f,xcp); % this would be wrong: ycp = f(xcp)
I = sum(ycp)*dx;
