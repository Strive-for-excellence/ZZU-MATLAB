% H(s) = 1/(s^3+2s^2+2s+1);
num = [1];
den = [1,2,2,1];
sys = tf(num,den);
figure(1); pzmap(sys);
[r,p] = residue(num,den)
t = 0:0.02:10;
h = impulse(num,den,t);
figure(2); plot(t,h);
title('Impulse Response');
[H,w] = freqs(num,den);
figure(3); plot(w,abs(H));
xlabel('\omega'); title('Magnitude Response');
