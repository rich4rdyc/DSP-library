function [ACM,CCM] = correlation(u,d)
%generate autocorrelation and crosscorrelation matrices
autoc = u(1).*u; %autocorrelation values r(0) to r(M)

autoc_CC = conj(autoc); %complex conjugate of autoc

CCM = (u.*conj(d)).';

if autoc(1) ~= autoc_CC(1)
   error('DC value error'); 
end

% construst the autocorrelation matrix
ACM = toeplitz(autoc_CC, autoc);

end