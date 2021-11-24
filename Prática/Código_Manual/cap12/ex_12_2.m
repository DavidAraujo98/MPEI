N= 1e4; repeticoes=1000;

contagens=zeros(1,repeticoes);
for rep=1:repeticoes
    % simular contador 
    x = rand(1, N);
    n = sum(x < 0.5);
    contagens(rep)=n;
end

fprintf(1,'Média = %.0f\n',mean(contagens));
fprintf(1,'Variância = %.0f\n',var(contagens));
fprintf(1,'Desvio padrão = %.0f\n',std(contagens));

histogram(contagens,20,'Normalization','pdf', 'Facecolor','none')
hold on
t=linspace(4800,5200,1000)
plot(t,normpdf(t,5000,50), '--k', 'LineWidth', 1.5)
legend('histograma','N(500,50)');
