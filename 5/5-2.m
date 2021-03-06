wm = 1;
wc = 1.1*wm;
Ts = 0.7*pi/wm;
ws = 2*pi/Ts;
n = -100:100;
nTs = n*Ts;
f = sinc(nTs/pi);
Dt = 0.005; t = -15:Dt:15;
fa = f*Ts*wc/pi*sinc((wc/pi)*(ones(length(nTs),1)*t-nTs'*ones(1,length(t))));
error  = abs(fa-sinc(t/pi));
t1 = -15:0.5:15;
subplot(311);stem(t1,f1);
xlabel('kTs');ylabel('f(kTs)');title('sa(t) = sinbc(t/pi)的采样信号');
subplot(312);plot(t,fa);
xlabel('t'); ylabel('fa(t)'); title('由sa(t) = sinc(t/pi)的过采样信号重构sa(t)');grid;
subplot(313); plot(t,error);
xlabel('t'); ylabel('error(t)');title('过采样信号与原信号的误差error(t)');
