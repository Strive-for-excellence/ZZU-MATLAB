function ljdt(A,B)
% The function to draw the pole-zero diagram for discrete system
p = roots(A);
q = roots(B);
p = p';
q = q';
x = max(abs([p,q,1]));
x = x+0.1;
y = x;
clf; 
hold on;
axis([-x,x,-y,y]);
w = 0:pi/300:2*pi;
t = exp(i*w);
plot(t);
axis('square');
plot([-x,x],[0,0]);
plot([0,0],[-y,y]);
text(0.1,x,'jIm[z]')
text(y,1/10,'Re[z]')
plot(real(p),imag(p),'x')
plot(real(q),imag(q),'o');
title('pole-zero diagram for discrete system');
hold off
