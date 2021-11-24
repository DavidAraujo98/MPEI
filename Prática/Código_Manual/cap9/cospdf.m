% função que gera n amostras de uma variável com uma densidade de probabilidade sinusoidal entre -pi/2 e pi/2 usando o método da rejeição
function [x,ef]=cospdf(namostras)
if nargin<1
    error ('nº de argumentos=0')
end
if namostras<1
    error('nº de amostras <1')
end
i=0;k=0;
while i<namostras
    z=pi*(rand-0.5);y=rand;
    if y<=0.5*cos(z)
        i=i+1;x(i)=z;
    else
        k=k+1;
    end
end
ef=i/(i+k);
return