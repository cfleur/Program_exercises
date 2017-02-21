% EX SYNTAX: 
% x = 0.0047 % this is the first guess
% lambda -lambda_0
function num16(x)
Re = 2.7*10^6;
B = (37530/Re)^16;
A = @(x)(2.457*reallog(1/((7/Re)^0.9+0.27.*x)))^16;
lambda = @(x)8*(8/Re)^12+(1/((2.457*reallog(1/(((7/Re)^0.9+0.27.*x)))^16)+((37530/Re)^16))^(3/2))^(1/12);
lambda_0  = 0.03041526;
Y = (lambda - lambda_0)


