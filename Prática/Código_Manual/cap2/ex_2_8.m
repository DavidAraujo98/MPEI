% Escolha aleatória de um PIN
x=floor(rand(1,4)*10);
% Procura aleatória de um PIN igual ao anteriormente
% definido fazendo N tentativas
N=1000000;k=0;
for i=1:N
   y=floor(rand(1,4)*10);
   if x==y
      k=k+1;
   end 
end 
% estimativa da probabilidade
prob=k/N;
fprintf(1,'Probabilidade de acertar no PIN=%6.3d\n',prob)
