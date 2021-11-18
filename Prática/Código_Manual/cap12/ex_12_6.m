bits=3;
k=2^(2^bits)-1;  % número de eventos

repeticoes= 1e4; % Número de simulações
ne= zeros(1,repeticoes);
n= zeros(1,repeticoes);

for r= 1:repeticoes,
    p= 1;       % inicializar a probabilidade de incremento
    
    for n= 1:k,
        x= (rand < p);
        if x==1,
            p= p/2;  % alterar probabilidade
        end
    end
    
    % valor atingido pelo contador
    n= log2(1/p);
    
    % estimativa do número de eventos
    ne(r)= 2^n-1;
end

% média  estimativa de eventos
media=mean(ne);
fprintf(1,'Média (simulação) = %.2f\n', media);
mediat= k +1;
fprintf(1,'Média (valor teórico) = %.2f\n', mediat);

% desvio padrão 
dp=std(ne);
fprintf(1,'Desvio Padrão (simulação) = %.2f\n',dp);
dpt=sqrt(k*(k+1)/2);
fprintf(1,'Desvio Padrão (valor teórico) = %.2f\n',dpt);