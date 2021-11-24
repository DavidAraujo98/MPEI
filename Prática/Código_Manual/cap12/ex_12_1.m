% gerar 100 variáveis aleatórias independentes em [0,1)
x = rand(1, 100);

% determinar quantas são < 0.5
n = sum(x < 0.5);