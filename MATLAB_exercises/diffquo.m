% Function diffquo
% This function approximates the derivative of simple, single variable,
% single term exponential functions
% w.r.t x, using the numerical differential method
% called Newton's difference quotient, a.k.a the central difference method.
% SYNTAX: diffquo(f,x) 
% where f is the function to be differentiated, and x is the arguement.
% Example: 
% funtodiff = @(x) x.^2;
% x = 2;
% diffquo(funtodiff,x)
function [D] = diffquo(f,x)
h = 10^-8.*x;
xph = x + h; 
xmh = x - h;
fxph = feval(f,xph);
fxmh = feval(f,xmh);
D = (fxph - fxmh)./(2.*h)

