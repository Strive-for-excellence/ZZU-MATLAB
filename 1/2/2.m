f = (1+cos(pi*t))*(heaviside(t)-heaviside(t-2));
ezplot(f);
grid on;
title('f(t) = (1+cos\pit)[u(t)-u(t-2)]');
