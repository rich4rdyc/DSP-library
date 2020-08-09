function Filter_main
%-------------------------------------------------------------------------
%Wiener Filter Wiener filter for a widesense stationary stochastic process
% using Levinson Recursion to reduce computational complexit of N^2. 
%This .m file generates a noisy signal of 1 SNR, u, and a desired
%signal, d, and uses a Wiener Filter to reduce noise.
%Future work to do is normalize the output of the filter and compute the
%error.
%-------------------------------------------------------------------------

close all;

F = 10000;

d = sineGen2(2,F,F);
% make this signal noisy and use u as the desired signal d[n]
% SNR is the 2nd parameter, 1
u = awgn(d,1,'measured');

L = length(d);

[ACM,CCM] = correlation(u,d);

%recursive levinson algorithm to solve the Wiener-Hopf equation
[~,~,x,~] = LD_recursion(ACM,CCM); 

%non-recursive solution for the Wiener-Hopf equation but has a much 
%higher cost
%x = LD(ACM,CCM);

%x is the optimum tap weight coefficient vector


[x_mag,FFTsize,x_total,~] = FFTmain(x.',F);
[u_mag,FFTsize,u_total,~] = FFTmain(u,F);

UX_f = x_total.*u_total;

ux_t = I_FFTrecursive(UX_f);

%------------------------------------------------------------------------
%take FFT of the input U and weight vector X and multiply them then IFFT
%the result for the final output
%------------------------------------------------------------------------


%plot the signals
fs = F*2^4;
 
dt = 1/fs; % seconds per sample 
 
%20 periods
T = 20/F;
 
% time step for one time period 
tt = 0:dt:T;

%out = mean(d-ux_t(1:L));

plot(tt,d);
figure();
plot(tt,u);
figure();
plot(tt,ux_t(1:L));

end