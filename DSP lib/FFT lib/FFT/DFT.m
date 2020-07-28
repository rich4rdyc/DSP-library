function out = DFT(a,b)

%{
DFT function that takes the DFT (butterfly) of two inputs and outputs 
the combination of the two resulting arrays. 
%}

N = length(a) + length(b);

L = N/2;

for j=0 : L-1
    
    [a(j+1),b(j+1)] = butterfly(a(j+1), b(j+1), j, N);

end

out = [a b];
end

