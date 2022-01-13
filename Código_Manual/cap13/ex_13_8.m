s='Métodos Probabilísticos'
M=113;     

% converter para vetor 
x=double(s)
% gerar vetor r
r=randi(M-1,1,length(x))
% h(x) =  r * x  mod M
h=mod( r* x', M)
