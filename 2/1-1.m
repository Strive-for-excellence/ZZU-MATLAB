k = 0:40;
subplot(211);
stem(k,cos(k*pi/8),'filled');
title('cos(k*pi/8)');
subplot(212);
stem(k,cos(2*k),'filled');
title('cos(2k)');
