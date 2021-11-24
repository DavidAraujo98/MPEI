function [B, h]= inicializar(n,k)
% Inicialização do vetor B e funções de dispersão h
% Parâmetros de entrada:
%     n - número de posições para B
%     k - número de funções de dispersão 
  
% vetor para o filtro de Bloom
B= zeros(1,n,'uint8');  

% inicializar função de dispersão
h= inicializarFuncaoDispersao(n);

-----------------------------------------

function h= inicializarFuncaoDispersao(n)
%  Inicialização de função de dispersão h

% obter primo
ff = 1000; % fudge factor
pp = ff * max(n + 1,76);
pp = pp + ~mod(pp,2);  
while (isprime(pp) == false)
    pp = pp + 2;
end

h.p = pp; % primo suficientemente grande
% parâmetros aleatórios
h.a = randi([1,(pp - 1)]);
h.b = randi([0,(pp - 1)]);
h.c = randi([1,(pp - 1)]);
