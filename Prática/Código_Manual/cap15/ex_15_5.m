% Matriz binária com conjuntos 
%   linha = shingle
%   coluna= documento
shingles=[ 1 0 1 0
           1 0 0 1
           0 1 0 1
           0 1 0 1
           0 1 0 1
           1 0 1 0
           1 0 1 0];
ndocs=size(shingles,2);
nshingles=size(shingles,1);
nperm=5;  %  núm. de permutações

% Matriz de assinaturas
M=zeros(nperm, ndocs);

for p=1:nperm
    % obter permutação aleatória
    perm=randperm(nshingles);
    
    for doc=1:ndocs
        aux=shingles(:,doc).*perm';
        M(p,doc)=min(aux(aux>0));
    end
end
disp(M)
