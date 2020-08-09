function s = Dot_Prod(a,b)

la = length(a);
lb = length(b);

if la ~= lb
   error('vector lengths dont match'); 
end

s = 0;

for n = 1 : la
    
    s = s + (a(n)*b(n));
    
end

end