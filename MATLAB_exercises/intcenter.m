% centerpoint intergation
% Function intcenter approximates the integral of f(x) from points a to b
% using the centerpoint method.
% SYNTAX: S = intcenter(f,a,b,np)
% where f is the fenction to integrated and a and b are limits and np is
% the number of centerpoints used.
% Example: 
% myfunction = @(x) x.^2
% intcenter(myfunction,0,5,100)
function [S] = intcenter(f,a,b,np)
x = linspace(a,b,np+1);
dx = x(2)-x(1);
xcp = x(1:np)+dx/2;
ycp = feval(f,xcp);
S = sum(ycp)*dx;