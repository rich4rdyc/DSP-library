function h = LPF(M,wc,B,N)

%{
A low pass filter using a Kaiser window.
M is the window size, wo is the cutoff frequency in radians, B is the
window shape, and N is the number of samples of the signal that will
be sampled. The purpose of zero padding it to size N is to make sure
the FFTs of the LPF coefficients and signal will have the same length
without altering information.
%}

h = zeros(1,N);

a = M/2;

for j=0:M
    
    h(j+1) = (bessel(B*sqrt((1-((j-a)/a)^2)))*sin(wc*(j-a)))/(pi*(j-a)*bessel(B));
    
end

end