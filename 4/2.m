
% 2 用MATLAB求单边指数信号f(t) = exp(-a*t)*u(t) 的波形

a = 10;
syms t;
f = exp(-a*t)*heaviside(t);
Fw = fourier(f)
subplot(211); ezplot(f,[-1,1,0,1.1]); grid on;
subplot(212); ezplot(abs(Fw),[-24*pi,24*pi]); grid on;
