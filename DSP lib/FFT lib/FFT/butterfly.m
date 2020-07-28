function [a,b] = butterfly(x,y,k,N)

%Butterfly function. Takes in 2 complex inputs and outouts 2 complex
%outputs.

c = exp(-2i *pi * k / N);

a = x + (c * y);

b = x - (c * y);

end









