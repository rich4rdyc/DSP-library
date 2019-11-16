function plotting(in,Fs,FFTsize)

L = length(in);

in2 = in(1:L/2);
% 2nd half of fft output unneccessary (phase info is tossed)
% complex conjugate of FFT bins to get magnitude
in1 = in2.*conj(in2);



x = 1:length(in1);

% frequency axis (x axis) using frequency resolution Fs/N
x1 = x.*(Fs/FFTsize);

plot(x1,in1);
end