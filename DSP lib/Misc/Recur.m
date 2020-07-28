function out = Recur(array1)

L = length(array1);

if L == 1
    out = array1;
    return
end

[oddA,evenA] = decimate(array1);
a = Recur(oddA); 
b = Recur(evenA);

%out = DFT(a,b);

out = [a b];

end
