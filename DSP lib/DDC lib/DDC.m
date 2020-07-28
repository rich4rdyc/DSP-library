function out = DDC(in_IF,IF,SSC,Fb)

%{
Function DDC takes in waveform, most likely from an ADC, and down
converts it to frequency Fb. The DDC assumes that the signal's frequency,
IF, and sampling scheme,SSC, are known. Changes to improve this function
would be to make it dependent on signal bandwidth rather than frequency.
This would allow an even smaller sampling rate after decimation.
%}

f1 = IF;

Fs = IF*SSC;

f2 = f1 - Fb;

%{
Gnerate complex sinusoids to mix the IF down to baseband
b is for the I channel and c is for the Q channel
%}
b = sineGen2(2,f1,f2); %cos
c = sineGen2(1,f1,f2); %sin

L_time = length(b);

I = mixer(in_IF,b);
Q = mixer(in_IF,c);

%{
Get the FFT of the signal to input it to the LPF
%}
[I1_mag,n,I1_total,I1_phase] = FFTmain(I,f1);

%{
LPF using a Kaiser window
%}

h = LPF(37,(1/8)*pi,6,L_time);
[H_mag,FFTsize,H_total,H_phase] = FFTmain(h,f1);


Iout = mixer(I1_total,H_total);

%{
uncomment the last 2 lines to plot the freq spectrum of Iout
plotting(Iout,Fs,FFTsize);
figure();
%}

%{
IFFT to recreate the signal
%}
IFFT_out = I_FFTrecursive(Iout);
out = IFFT_out(1:L);

%{
uncommment the below 5 lines to plot IFFT_out
 
 F = Fs/(2^4);
 T = 20/F;
 dt = 1/Fs;
 tt = 0:dt:T;
 plot(tt,out);
%}




%{
decimate is something like this
dec = 2;
I_length = floor(length(Iout)/2);
Iout2 = zeros(1,I_length);
for j=0:I_length-1
Iout2(j+1) = Iout((j*dec)+1);
end
%}

end