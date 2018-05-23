%4-1
syms t;
Fw = fourier(exp(-2*abs(t)))
%4-2
syms w;
ft = ifourier(1/(1+w*w),t)
