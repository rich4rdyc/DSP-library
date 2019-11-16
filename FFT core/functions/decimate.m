function [out1, out2] = decimate(array1)

L = length(array1);

oddA = zeros(1,L/2);

evenA = zeros(1,L/2);

for j=1 : 1 : L/2
    oddA(j) = array1(2*j - 1);
    evenA(j) = array1(2*j);
end

out1 = oddA;
out2 = evenA;
end
    