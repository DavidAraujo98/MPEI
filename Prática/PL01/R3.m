n = 20; %número de perguntas
N = 1e5; %número de experiências
p = 0.5; % probabilidade de acertar 1 pergunta
k = n; %número de respostas certas igual ao de perguntas
r = cointoss(p, n, k, N);
format long;
disp(r);