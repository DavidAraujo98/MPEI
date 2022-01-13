function h = hknuth(k,M)
% Função de dispersão baseada em divisão (Variante de Knuth)
% Entradas:  k - chave (número inteiro)
%            M - número de valores possíveis 
 
h = mod(k*(k+3), M);
