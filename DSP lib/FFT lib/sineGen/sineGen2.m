function d = sineGen2(flag,F,F2)
%waveform generator with 3 cases
%fs is the sampling frequency
%F is the desired frequency
%over sample by 2^n where n is the bit resolution
 fs = F*2^4;
 
 dt = 1/fs; % seconds per sample 
 
 %20 periods
 T = 20/F;
 
 % time step for one time period 
 tt = 0:dt:T;

switch flag
    case 1 %sine for Q channel
        d = sin(2*pi*F2*tt);
    case 2 %cosine for I channel
        d = cos(2*pi*F2*tt);
    case 3 %complex sinusoid
        d = cos(2*pi*F*tt)+(1i*sin(2*pi*F*tt));
    otherwise %error case
        error('choose a value between 1-3')
end
 
end