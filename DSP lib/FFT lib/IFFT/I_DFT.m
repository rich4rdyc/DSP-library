function [a, b] = I_DFT(array1)
%{
IDFT function. Input, array1, needs to be an even size since this is
meant for a radix-2 IFFT.

%}

N = length(array1);
L = N/2;

%Separate the array in 2 equal halves and do a reverse butterfly with both.
a = array1(1:L);
b = array1(L+1:N);

for j=0 : L-1
    
    [a(j+1),b(j+1)] = R_butt(a(j+1), b(j+1), j, N);
end


end

