% 函数
function f = zxy(t);
f = (2-exp(-2*t))*heaviside(t);

%源程序
f = zxy(t);
f1 = zxy(t);
f2 = zxy(2*t);
subplot(211); ezplot(f1); grid on;
subplot(212); ezplot(f2); grid on;
f = zxy(t);
f1 = zxy(2*t);
f2 = zxy(2-t);
subplot(3,1,1); ezplot(f); grid on; title('f(t)');
subplot(3,1,2); ezplot(f1); grid on; title('f(2*t)');
subplot(3,1,3); ezplot(f2); grid on; title('f(2-t)');
