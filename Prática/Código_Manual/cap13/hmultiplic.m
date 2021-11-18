function h = hmultiplic(k,M)
% Função de dispersão baseada na multiplicação
% Entradas:   k - chave;  
%             M  - núm. de valores possíveis [0,M-1]

A= 0.5*(sqrt(5) - 1);
h=floor(M*(mod(k*A,1)));
