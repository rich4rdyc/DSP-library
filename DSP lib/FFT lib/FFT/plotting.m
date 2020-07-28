function out = plotting(in,Fs,FFTsize)

% plotting function for the magnitude of the FFT output and outputs
% the resulting array containing magnitude information excluding phase.

L = length(in);

in1 = in(1:L/2);
% 2nd half of fft output unneccessary (phase info is tossed)
% complex conjugate of FFT bins to get magnitude
in2 = in1.*conj(in1);

% frequency axis (x axis) using frequency resolution Fs/N
% enable the 3 lines below to view the frequency spectrum
 x = 0:length(in2)-1;
 x1 = x.*(Fs/FFTsize);
 
 plot(x1,in2);

out = in2;
end