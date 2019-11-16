function out = DFT(a,b)

N = length(a) + length(b);
k = N/2-1;

if N == 2
    [c1, c2] = butterfly(a, b, k, N);
    out = [c1 c2];
    return
end

L = N/2;

%[a1,a2] = decimate(a);
%[b1,b2] = decimate(b);

%c1 = [a1 a2];
%c2 = [b1 b2];



%for j=0 : L-1
    
    %[c1(j+1),c2(j+1)] = butterfly(c1(j+1), c2(j+1), j, N);

%end

for j=0 : L-1
    
    [a(j+1),b(j+1)] = butterfly(a(j+1), b(j+1), j, N);

end

out = [a b];
end

