syms t;
f = (2-exp(-2*t))*heaviside(t);
ezplot(f); 
grid on;
title('f(t) = (2-e^{-2t})u(t)');
