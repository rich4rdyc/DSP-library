function out = bitRe(a,b)

a1,a2 = decimate(a);
b1,b2 = decimate(b);

c1 = [a1 a2];
c2 = [b1 b2];

out = [c1 c2]; 