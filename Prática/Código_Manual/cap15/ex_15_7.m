NS =1e2;    % número de shingles
NREPS=6;    % número de simulações 
N=500;      % número de experiências

% simular várias vezes
for rep=1:NREPS
    fprintf(1,'Simulação #%d\n',rep);
    
    % criar dois conjuntos C1 e C2  (colunas de bits)
    limiar1=rand();
    limiar2=rand();
    C1=rand(NS,1)>limiar1;
    C2=rand(NS,1)>limiar2;
  
    % calcular distância de Jaccard  
    %    (com operações com bits)
    I= C1 & C2; 
    U= C1 | C2;

    simJ=sum(I)/sum(U); % Similaridade de Jaccard
    fprintf(1,'\nSimilaridade de Jaccard =%.2f\n',simJ);
   
    % estimar com hash
    cfav=0;   % contagem de casos favoráveis
    p=zeros(1,N);
    
    for i=1:N
        % permutar
        pi1=C1(randperm(NS));
        pi2=C2(randperm(NS));
    
        % mínimos
        % índice da primeira linha na permutação em que a coluna tem valor igual a 1
        min1=min(find(pi1>0));
        min2=min(find(pi2>0));
    
        % se mínimos iguais
        if min1==min2
            cfav=cfav+1;
        end

        % representação gráfica contínua
        p(i)=cfav/i; 
        figure(1); subplot(3,2,rep)
        plot(1:i,p(1:i));
        title(['SimJ =' sprintf('%.2f',simJaccard)]);
        drawnow;
    end

    sim=cfav/N; distancia=1-sim;
    fprintf(1,'Distância usando min(h(x))=%.2f\n',distancia);
    
    ax=axis; ax(3)=0; ax(4)=1; axis(ax);
    text(N/2,0.5,['p[min(\pi(C_1) =min(\pi(C_2)] =' ...
            sprintf('%.2f',p(i))],...
            'FontSize',9, 'HorizontalAlignment','center');
    ylabel('probabilidade');
    xlabel('experiência');

end
