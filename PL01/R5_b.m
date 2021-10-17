n = 20;
N = 1e5;
p = 0.5;

mx = rand(n,N) > p;
mx = mx(1:2:end,:); % Manter linhas impares
res = sum(mx); % Sumar valores da mesma coluna
res = res==10 | res==0; %Filtrar se essa soma é igual a 10 ou 0, ou seja, a coluna era toda ela 0 ou toda 1
prob = sum(res)/N; % Número de ocorrênias anteriores a dividir pelas ocorrências totais

format long;

disp(prob);