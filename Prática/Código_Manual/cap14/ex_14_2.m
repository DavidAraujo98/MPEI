Conjunto={'ajt@ua.pt','faz@ua.pt','bom@ua.pt'};
Teste={'pirata@piratas.com','hacker@hackers.com'};

%%  criar e inicializar B (e funções de dispersão)
n=100;      %  #B
k=3;        %  num. de funções de dispersão
[B,hs]= inicializar(n,k);   
                      
%%  inserir elementos do conjunto no filtro
for e=1:length(Conjunto)
    fprintf(1,'Inserindo %s no filtro\n',Conjunto{e});
    B=adicionarElemento(Conjunto{e}, B,k,hs)  ;  
end

%%  verificar pertença ao conjunto de membros 
for e=1:length(Conjunto)
    fprintf(1,'Verificando pertença de %s\n',Conjunto{e});    
    r=membro(Conjunto{e}, B,k,hs);  
    if r==1
        fprintf(1,'Pertence     : OK\n');
    else
        fprintf(1,'Não Pertence : Falso Negativo\n');  
    end 
end    

%%  verificar pertença de elementos de teste (não pertencentes)
for e=1:length(Teste)
    fprintf(1,'Verificando pertença de %s\n',Teste{e});
    r=membro(Teste{e}, B,k,hs);  
    if r==1
        fprintf(1,'Pertence     : Falso Positivo\n');
    else
        fprintf(1,'Não Pertence : OK\n');    
    end
end
