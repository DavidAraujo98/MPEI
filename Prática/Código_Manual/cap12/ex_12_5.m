N= 1e5;  repeticoes=1000;

contagens=zeros(1,repeticoes);
for rep=1:repeticoes
    % simular contador 
    x = rand(1, N);
    n = sum(x < 1/128);  
    contagens(rep)=n;
end

fprintf(1,'Média = %.2f\n',mean(contagens));
fprintf(1,'Desvio padrão = %.2f\n',std(contagens));