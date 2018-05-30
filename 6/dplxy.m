function dplxy(k,r,A,B)
% The function to draw frequency response of discrete system
p = roots(A);
q = roots(B);
figure(1);
ljdt(A,B);
w = 0:1*pi/k:r*pi;
y = exp(i * w);
N = length(p);
M = length(q);
yp = ones(N,1)*y;
yq = ones(M,1)*y;
vp = yp - p*ones(1,r*k+1);
vq = yq - q*ones(1,r*k+1);
Ai = abs(vp);
Bj = abs(vq);
Ci = angle(vp);
Dj = angle(vq);
fai = sum(Dj,1) - sum(Ci,1);
H = prod(Bj,1)./prod(Ai,1);
figure(2)
plot(w,H);
title('离散系统幅频特性曲线')
xlabel('角频率'); ylabel('幅度'); 
figure(3)
plot(w,fai)
title('离散系统的相频特性曲线')
xlabel('角频率');ylabel('相位');
