function a = ordering(oddA,evenA)
%{
Bit reverse ordering function. Differs from bitRe.m in the fact that it takes
in 2 inputs to make one array.
%}
L = length(oddA);

a = zeros(1,L);

for j=1 : 1 : L
    a(2*j - 1) = oddA(j);
    a(2*j) = evenA(j);
end

end
    