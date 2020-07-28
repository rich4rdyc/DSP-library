function out = SDR_main

%{
This is a test bench for the DDC function to simulate the digital 
portion of an SDR (software defined radio). This assumes the signal
"a" is the output of some RF frontend that has mixed the original
radio signal down to an IF, intermediate frequency. The DDC will 
further downconvert the signal, most likely to baseband, for further
DSP operations.
%}

a = sineGen2(3,100000,0);
%figure();
out = DDC(a,100000*(2^4),50000);

end