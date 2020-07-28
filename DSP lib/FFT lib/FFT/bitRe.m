function out = bitRe(a,b)

%{
Bit reverse ordering function. Differs from ordering.m in that this
function takes in two arrays and outputs one array.
%}

a1,a2 = decimate(a);
b1,b2 = decimate(b);

c1 = [a1 a2];
c2 = [b1 b2];

out = [c1 c2]; 