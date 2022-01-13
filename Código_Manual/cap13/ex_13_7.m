u=4;b=3;
S=[1 3 5 7 9];  %  conjunto de chaves
h=[ 1 0 0 0
    0 1 1 1
    1 1 1 0];

x=de2bi(S,u)';  %  conversão para binário, com u-bits

hx=mod(h*x,2)   %  multiplicação (mod 2) 
