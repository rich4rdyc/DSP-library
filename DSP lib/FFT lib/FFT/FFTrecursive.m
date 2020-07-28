function out = FFTrecursive(array1)

L = length(array1);

if L == 1
    out = array1;
    return
end

[oddA,evenA] = decimate(array1);
a = FFTrecursive(oddA); 
b = FFTrecursive(evenA);

out = DFT(a,b);

%out = [a b];

end



