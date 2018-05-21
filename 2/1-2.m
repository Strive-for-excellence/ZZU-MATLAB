1-2
function pulse(k1,k2,k0)
 k = k1:k2;
 n = length(k);
 f = zeros(1,n);
 f(1,k0-k1+1) = 1;
 stem(k,f,'f');
 axis([k1,k2,0,1.5]);
 title('单位序列delta(k)');
end
