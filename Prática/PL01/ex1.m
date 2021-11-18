% Método 1
experiencias = rand(3,10000);
lancamentos = experiencias > 0.5;
resultados = sum(lancamentos);
sucessos = resultados==2;
prob = sum(sucessos)/10000;

% Método 2
N = 1e5;
p = 0.5;
k = 2;
n = 3;
lancamentoss = rand(n,N) > p;
sucessoss = sum(lancamentoss)==k;
probs = sum(sucessoss)/N

format long;

disp(prob);
disp(probs);