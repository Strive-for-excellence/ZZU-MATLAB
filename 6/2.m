% f(t) = te^(-3t)u(t);
syms t;
laplace(t*exp(-3*t))*heaviside(t)
