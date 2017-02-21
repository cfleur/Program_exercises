g = 9.81;
d_p = 0.05;
rho = 1000;
mu = 18.1;
lambda = 0.064;
v_at_y = @(y) (g*rho*d_p^2*(1+(lambda/d_p)*(2.43+1.05*exp(-0.39*d_p/lambda))))/(18*mu);

C_c = 1+(lambda/d_p)*(2.43+1.05*exp(-0.39*d_p/lambda))
V_t = (g*rho*d_p^2*C_c)/(18*mu)
