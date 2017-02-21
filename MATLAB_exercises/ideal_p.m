%Function ideal_p calculates pressure of a gas under ideal conditions when
%T, n, and V are known.
%Syntax: p = ideal_p(n,T,V)
%Example:
%naan = 1; 
%te = 293;
%vax = 1e-3; %m^3
%pressure = ideal_p(naan,te,vax)
function [p] = ideal_p(n,T,V)
R = 8.314;
p = (n.*R.*T)./V; %here you MUST use generic names
%every computational line must end with ;



