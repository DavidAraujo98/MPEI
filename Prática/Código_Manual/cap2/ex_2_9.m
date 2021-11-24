%Gerar um conjunto de M strings com n letras minúsculas
M=100;n=4;
S=zeros(M,n);
for i=1:M
    S(i,:)=letras(n);
end
S=char(S);
N=1e5;    % número de string geradas
NREPS=10; % número de repetições
p=zeros (1,NREPS); %
for r=1:NREPS   %  repetir NREPS vezes
        fprintf(1,'Simulação %d\n',r);
    Cf=0;
    for i=1:N
        a=letras(n);        
        %fprintf(1,'%d %s\n',i,a);        
        %  comparar com M strings
        b=zeros(1,M);
        for j=1:M
            b(j)=strcmp(S(j,:),a);
            if (debug && b(j))
                fprintf(1,'IGUAIS %s %s\n',S(j,:),a);
            end
        end
        Cf=Cf+sum(b);  % incrementa casos favoráveis    
    end
    p(r)=  Cf/N;
    pTeorica= M*(1/26)^n;
    fprintf(1,'Teórico=%g Simulado = %g  : dif=%g\n',pTeorica,p(r), pTeorica-p(r));   
end
fprintf(1,'Teórico=%g ; Média %d simulações = %g\n',pTeorica,NREPS, mean(p));


