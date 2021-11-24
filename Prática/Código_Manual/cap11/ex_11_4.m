H=[  0 1/2  0    0 
   1/3   0  0  1/2
   1/3   0  1  1/2 
   1/3 1/2  0    0];

% inicializar vetor r
n=length(H);
r=ones(n,1)/n;
rAnterior=r;
r=H*r;
epsilon= 1e-12;  % ou outro valor pequeno
while (max(r-rAnterior) > epsilon)
    rAnterior=r;
    r=H*r;
end
format long
disp(r)
