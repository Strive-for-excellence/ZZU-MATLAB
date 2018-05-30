A = [1,0];
B = [1,-0.5];
[H,w] = freqz(B,A,10);
Hf = abs(H);
Hx = angle(H);
clf;
figure(1)
plot(w,Hf)
title('离散系统幅频特性曲线')
figure(2)
plot(w,Hx)
title('离散系统的相频特性曲线')
figure(3)
freqz(B,A,400)
