function [a,b] = R_butt(x,y,k,N)

%{
Reverse butterfly function for the IFFT
%}
t = exp(-2i*pi*k/N);

b = (x-y)/(2*t);

a = (x+y)/2;

end

