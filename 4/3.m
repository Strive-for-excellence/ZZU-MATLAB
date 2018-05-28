
a = [0.08,0.4,1];
b = [1];
w = 0:0.5:2*pi;
h = freqs(b,a,w)
subplot(211);plot(w,abs(h)); grid on;
subplot(212);plot(w,angle(h)); grid on;
