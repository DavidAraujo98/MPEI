function hash=str2hash(str)
% Função de dispersão para cadeias de carateres
% 
% Entrada:  str : cadeia de carateres (string)
% Saída:    hash : inteiro entre 0 and 2^32-1
% Implementa o algoritmo djb2 
%           (reportado por Dan Bernstein em comp.lang.c)
% Adaptada de string2hash de D.Kroon, U. of Twente (June 2010)
 
% converter string num array de doubles
str=double(str);

hash = 5381*ones(size(str,1),1); 

for i=1:size(str,2), 
    hash = mod(hash * 33 + str(:,i), 2^32-1); 
end
