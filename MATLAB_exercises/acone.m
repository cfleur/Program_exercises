% this function calculates the surface area of a cone, given a radius [r] and height [h].
% SYNTAX: acone(r,h)
% example: 
% r = 7.256;
% h = 3.628;
% acone(r,h)
% This will output the surface area with given values for r and h.
function [A] = acone(r,h)
 A = pi.*r.*(r+(sqrt(h.^2+r.^2)))

