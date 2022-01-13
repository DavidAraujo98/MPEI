function c=contagem(elemento, B,k,h) 
% Devolve uma estimativa do número de ocorrências de elemento
% Parâmetros de entrada:
%   elemento    - elemento a adicionar
%   B           - vetor 
%   k           - número de funções de dispersão 
%   h           - parâmetros definidores da função de dispersão
       
n=length(B);
pos= zeros(1,k);

chave=elemento;

%  aplicar as k funções de dispersão
for i= 1:k,
    chave= [chave num2str(i)];
    pos(i)= funcaoDispersao(chave,n,h);
end

% estimativa da contagem é igual ao valor mínimo nas k posições
c = min (B(pos))
