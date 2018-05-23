%4-3

ft = sym('4*cos(2*pi*6*t)*(heaviside(t+1/4)-heaviside(t-1/4))');
Fw = simplify(fourier(ft));
subplot(121); ezplot(ft,[-0.5,0.5]),grid on;
subplot(122); ezplot(abs(Fw),[-24*pi,24*pi]); grid on;
