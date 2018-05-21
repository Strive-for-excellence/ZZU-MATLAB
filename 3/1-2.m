ts = 0;
te = 5;
dt = 0.01;
sys = tf([10],[1,2,100]);
t = ts:dt:te;
h = impulse(sys,t);
figure; plot(t,h);
xlabel('Time(sec)');
ylabel('h(t)')
g = step(sys,t);
hold on;
plot(t,g);
xlabel('Time(sec)');
ylabel('g(t)&h(t)');
