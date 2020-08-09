function [a,b,x,e] = LD_recursion(ACM,CCM)
%ACM is the autocorrelation matrix
%CCM is the crosscorrelation matrix
%L is the number of autocorrelatiojn coefficients (esesntially the number
%of columns of the ACM. L is also used for recursion.

L = length(ACM);
%L2 = length(CCM);

N = L-1;

if N == 0 %base case
    
%solve a0
a = 1;
%solve b0
b = 1;
%solve e0
e = ACM(1);
%solve x0
x = CCM(1)/e;

   return; 
end
    
[a2,b2,x2,e2] = LD_recursion(ACM(1:N,1:N),CCM(1:N));

%solve E
E = (-1/e2)*Dot_Prod(ACM(L,:),[a2;0]);

%solve V
V = (-1/e2)*Dot_Prod(ACM(1,:),[0;b2]);
%solve a
a = [a2;0] + (E*[0;b2]);
%solve b
b = [0;b2] + (V*[a2;0]);
%solve e
e = e2*(1 - (E*V));
%solve x
y = CCM(L) - Dot_Prod(ACM(L,:),[x2;0]);
%y = Dot_Prod(ACM(L,:),[x2;0]);
%y = x2;
%y = CCM(L);
x = [x2;0] + ((y/e)*b);

end
