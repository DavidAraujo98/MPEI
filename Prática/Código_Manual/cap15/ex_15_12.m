tic
b=35; r=5;  % configuração de LSH
nfd=b*r;    % número de funções de dispersão

fprintf(1,'%d bandas de comprimento %d\n',b,r);
fprintf(1,'%d funções de dispersão para MinHash\n\n',nfd);

%%  Leitura de informação do ficheiro u.data
[Conjuntos, utilizadores]=definirConjuntos('u.data');  

%% Calcular MinHash

% Inicialização  das funções de dispersão
N= 100000;
v= inicFuncoesDispersao(N,nfd);

% calcular Assinaturas MinhHash
M=calcularMatrizAssinaturas(Conjuntos,v,N,nfd);

%%  calcular matriz reduzida aplicando LSH 
Mr=aplicarLSH(M,b,r);

%%  Determinar Pares Similares (usando informação de LSH)
limiar =0.4;  % limiar de decisão
Similares=similaresUsandoLSH(Mr,M,nfd,limiar,utilizadores);
 
%% Mostrar pares similares 
fprintf(1,'\n%d Pares Similares [dist < %.2f]\n', size(Similares,1),limiar);
for i=1:size(Similares,1)  %  
    fprintf(1,'%3d %3d: Distância= %.3f\n', Similares(i,:));
end
 
%%  
fprintf(1,'Processo demorou %f s\n\n',toc);