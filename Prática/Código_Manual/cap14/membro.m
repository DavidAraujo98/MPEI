function r=membro(elemento, B,k,h) 
% Verifica se elemento pertence ao filtro
% Parâmetros de entrada:
%   elemento    - elemento a adicionar
%   B           - vetor 
%   k           - número de funções de dispersão 
%   h           - parâmetros definidores da função de dispersão

n=length(B);
pos= zeros(1,k);

chave=elemento;
for i= 1:k,
    chave= [chave num2str(i)];
    pos(i)= funcaoDispersao(chave,n,h);
end

if all(B(pos)==1),
    r= 1;
else
    r= 0;
end
