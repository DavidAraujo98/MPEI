% Gerar sequência de letras, escolhidas aleatoriamente
% 
% Argumentos de entrada:
%   n                   número de letras
%   maiusc (opcional)   se verdadeiro gera maiúsculas; 
%                       se falso gera minúsculas.
%                       se não for fornecido assume valor FALSO
%
% Nota: considera-se as 26 letras do alfabeto português

function r=letras(n,maiusc)

% verificar número de argumentos de entrada
if nargin<1 || nargin >2
    error('número de argumentos inválido')
end
% se invocado apenas com 1 argumento
if nargin==1
    maiusc=false;
end
% definir conjuntos de letras possíveis
minusculas='a':'z'; 
maiusculas='A':'Z';
% gerar n números aleatórios entre 1 e o número de letras possíveis
x=floor(rand(1,n)*length(minusculas))+1;
if ~maiusc
    r=minusculas(x);
else
    r=maiusculas(x);
end

