function [a,b] = butterfly(x,y,k,N)

c = exp(-2i *pi * k / N);

a = x + (c * y);

b = x - (c * y);

end









