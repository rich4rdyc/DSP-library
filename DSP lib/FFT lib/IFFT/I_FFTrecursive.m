function out = I_FFTrecursive(array1)
%{
Recursive radix-2 IFFT function. 
%}

L = length(array1);
% base case for recursion
if L == 1
    out = array1;
    return
end

% IDFT recursion
[oddA,evenA] = I_DFT(array1);
a = I_FFTrecursive(oddA); 
b = I_FFTrecursive(evenA);

% Bit reverse ordering
out = ordering(a,b);

end



