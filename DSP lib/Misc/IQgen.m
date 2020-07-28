function [I,Q] = IQgen(d1, F)
%fs is the sampling frequency
%F is the desired frequency
%over sample by 4^n where n is the bit resolution
 fs = F*4^4;
 dt = 1/fs; % seconds per sample 
 %StopTime = 0.25; % seconds 
 %t = (0:dt:StopTime)'; % seconds 
 
 %data = sin(2*pi*F*t);
 %plot(t,data)
 %%For one cycle get time period
 T = 4/F;
 % time step for one time period 
 tt = 0:dt:T+dt;
 
 I = d1 - (1i*sin(2*pi*F*tt));
 Q = d1 - cos(2*pi*F*tt);

 

end