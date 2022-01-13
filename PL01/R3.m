n = 20; %número de perguntas
N = 1e6; %número de experiências
p = 0.5; % probabilidade de acertar 1 pergunta
k = 20; %número de respostas certas igual ao de perguntas
r = cointoss(p, n, k, N);
format long;
disp(r);