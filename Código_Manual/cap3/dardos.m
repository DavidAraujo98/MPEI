function [p1, p2]= dardos(n,m,N)
% lançamento com os olhos vendados de n dardos para m  alvos, um de cada vez, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1)
%  p1   probabilidade de nenhum alvo ter sido atingido mais do que uma vez
%  p2   probabilidade de pelo menos 1 alvo ter sido atingido 2 vezes
%  n    dardos
%  m    alvos
%  N    simulações


%%  gerar n números de 1 a m
alvos=floor(rand(n,N)*m)+1;
% ALTERNATIVA: alvos=randi([1,m],[n,N])
%%  determinar se todos são diferentes
diferentes=zeros(1,N);
for col=1:size(alvos,2)
    diferentes(col)=length(unique(alvos(:,col)));
end
%% calcular probabilidades
% Casos favoráveis: diferentes igual a n
p1=sum(diferentes==n) / N;
p2=1-p1;