Conjunto={'tomate','couve','cebola'}
Teste={'pepino','cenoura','Tomate'}

%%  criar e inicializar B (e funções de dispersão)
n=29;   %  #B calculado para prob. falso positivos = 0.01
k=3;    %  num de funções de dispersão
[B,hs]= inicializar(n,k);   
                      
%%  inserir elementos do conjunto
for e=1:length(Conjunto)
    fprintf(1,'Inserindo %s no filtro\n',Conjunto{e});
    % inserir em B 
    B=adicionarElemento(Conjunto{e}, B,k,hs)  ; 
end

f=sum(B)/n ; 
fprintf(1,'Fator de carga = %.2f \n',f);

%%  verificar pertença do conjunto de membros 
fn=0;
for e=1:length(Conjunto)
    fprintf(1,'Verificando pertença de %s\n',Conjunto{e});
    
    r=membro(Conjunto{e}, B,k,hs)  ;  
    if r==1
        fprintf(1,'Pertence     : OK\n');
    else
        fprintf(1,'Não Pertence : Falso Negativo\n'); 
        fn=fn+1;
    end
end

fprintf(1,'Falsos negativos (TEM DE SER ZERO) = ... 
        %.2f\n',fn/length(Conjunto)*100);
    
%%  verificar pertença do conjunto de teste
fp=0;   % falsos positivos
for e=1:length(Teste)
    fprintf(1,'Verificando pertença de %s\n',Teste{e});
    
    r=membro(Teste{e}, B,k,hs)  ; 
    if r==1
        fprintf(1,'Pertence     : Falso Positivo\n');
        fp=fp+1;
    else
        fprintf(1,'Não Pertence : OK\n'); 
    end
end
 
fprintf(1,'Falsos positivos = %.2f\n',fp/length(Teste)*100);
