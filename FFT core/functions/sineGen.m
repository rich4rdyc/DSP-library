function out = sineGen

fs = 5000; % Sampling frequency (samples per second) 
 dt = 1/fs; % seconds per sample 
 %StopTime = 0.25; % seconds 
 %t = (0:dt:StopTime)'; % seconds 
 F = 30; % Sine wave frequency (hertz) 
 %data = sin(2*pi*F*t);
 %plot(t,data)
 %%For one cycle get time period
 T = 4/(F);
 % time step for one time period 
 tt = 0:dt:T+dt;
 d = sin(2*pi*F*tt);
 plot(tt,d);
 out = d;
 
end