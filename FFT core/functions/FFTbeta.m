function Z = FFTbeta(array1)
FFTsize = size(array1,2);
V = log2(FFTsize);

for j = 0 : (V-1)
    k = 0;
    z = (2^j) - 1;
    for i = 1 : 2 : FFTsize
        
        [o1,o2] = butterfly(array1(i), array1(i+1), k, FFTsize);
        array1(i) = o1;
        array1(i+1) = o2;
        k = k + 1;
        if k > z
            k = 0;
        end
    end
end
Z = array1;
end
        