%There are function help lines that are given
%before the definition line:
%Function myatan2d calculates the phase angle corresponding to
%given x and y coordinates.
%Syntax: a = myatan2d(y,x)
%Example:
%xcoord = 1; ycoord = 1/sqrt(3);
%angle = myatan2d(ycoord,xcoord)
function [a] = myatan2d(y,x)
%the definition line always starts with function and appears blue
a = atan2(y,x)/pi*180;