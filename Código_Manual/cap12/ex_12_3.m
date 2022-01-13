repeticoes=1e5;
k=[10 100]

for i=1:length(k)
    contagens=zeros(1,repeticoes);
    for rep=1:repeticoes
        % simular contador 
        x = rand(1, k(i));
        n = sum(x < 0.5);
        contagens(rep)=n;
    end

    subplot(length(k),1,i)
    [n x]=hist(contagens, min(contagens):max(contagens));
    stem(x,n/repeticoes); title(['k= ' num2str(k(i))]);
    sum(n/repeticoes)
end
