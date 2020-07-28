function [oddA, evenA] = decimate(array1)

%{
Decimate function that takes an input, array1, and separate it into two
arrays. The first array is are the odd elements of array1 and the second
array are the even elements of array1.
%}

L = length(array1);

oddA = zeros(1,L/2);

evenA = zeros(1,L/2);

for j=1 : 1 : L/2
    oddA(j) = array1(2*j - 1);
    evenA(j) = array1(2*j);
end

end
    