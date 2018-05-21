
3
A = [1,1,0.25];
B = [1];
k = 0:15;
x = ones(1,16);
subplot(211); stem(k,x);
y = filter(B,A,x);
subplot(212); stem(k,y);
