% 用MATLAB 分析LTI系统的输出响应

RC = 0.04;
t  = linspace(-2,2,1024);
w1 = 5; w2 = 100;
H1 = j*w1/(j*w1+1/RC);
H2 = j*w2/(j*w2+1/RC);
f  = cos(5*t)+cos(100*t);
y = abs(H1).*cos(w1*t+angle(H1))+abs(H2).*cos(w2*t+angle(H2));
subplot(211);
plot(t,f);
axis([-0.5,0.5,-2,2]);
ylabel('f(t)');
xlabel('t/s');
subplot(212);
plot(t,y);
axis([-0.5,0.5,-2,2]);
ylabel('y(t)');
xlabel('t/s');
