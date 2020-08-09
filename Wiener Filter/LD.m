function w = LD(ACM,CCM)
%ACM is the autocorrelation matrix
%CCM is the crosscorrelation matrix

w = ACM\CCM;
%w = inv(ACM)*CCM;
end
