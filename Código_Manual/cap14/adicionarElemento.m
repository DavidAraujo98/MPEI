function B=adicionarElemento(elemento, B,k,h)
% Insere elemento no filtro (B)
% Parâmetros de entrada:
%   elemento    - elemento a adicionar
%   B           - vetor 
%   k           - número de funções de dispersão 
%   h           - parâmetros definidores da função de dispersão 

n=length(B)

chave=elemento;
%  para cada uma das k funções de dispersão
for i=1:k
    %  para criar k funções de dispersão
    chave= [chave num2str(i)];  
    
    % aplicar função de dispersão
    pos=funcaoDispersao(chave,n,h);    
 
    %  colocar bit a 1
    B(pos)=1; 
end 

----------------------------------------

function hk = funcaoDispersao(chave,n,h)
% Cálculo da função de dispersão 
% Parâmetros de entrada:
%   chave   -  string contendo elemento e informação adicional
%   n       - número de posições de B 
%   h       - parâmetros definidores da função de dispersão

ll = length(chave);
if (ischar(chave) == false)
    error('chave inválida');
end
chave = double(chave) - 47; % chave(i) pertence a [1,...,75]

% calcular
hk = chave(1);
for i = 2:ll
    hk = mod(h.c * hk + chave(i),h.p);
end
hk = mod(mod(h.a * hk + h.b,h.p),n) + 1;

% Para mais informação:
%   http://en.wikipedia.org/wiki/Universal_hashing
%   Secções: Hashing integers,  Hashing strings

