function out = bessel(n)

%{
zeroth order bessel function of the first kind
%}
a = @(x) cos(0)*exp(n*cos(x));
out = integral(a,0,pi)/pi;

end