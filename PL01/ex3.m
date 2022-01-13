N = 1e5;
p = 0.5;
k = 6;
n = 15;
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)>=k;
prob = sum(sucessos)/N

format long;
disp(prob);