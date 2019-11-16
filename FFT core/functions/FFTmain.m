function FFTmain(array,Fs)
%possible make this its own function named "zero pad"
L = length(array);
N = 2^(ceil(log2(L)));
N1 = 16*N;
% N1 is used to improve frequency resolution
% if you know the size of the sample array then you can expect the
% frequency resolution to be Fr = Fs/16N where N is the next largest number
% that is a power of 2
% for example if the input is size 1000 then N is 1024 and  if Fs was 10kHz
% then Fr is 0.6104

array1 = [array zeros(1,N1-L)];

%the purpose is to make the input of the radix-2 FFT a length of a power of
%2 by zero padding it
%the ceil function is a round up function

t = FFTrecursive(array1);

plotting(t, Fs, N1);

end


