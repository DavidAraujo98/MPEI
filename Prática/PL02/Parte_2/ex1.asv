x = linspace(0,10,50);
tiledlayout(2,1)

xi = 1:6;   % Casos possiveis
p = ones(1,6)/6;    % Probabilidades associadas

% Função Massa de Probabilidade
nexttile
stem(xi,p), xlabel('x_1'), ylabel('y_i');
title('fmp');

% Função de Distribuição Acumulada
nexttile
p = cumsum(p);
stairs(xi,p), xlabel('x_1'), ylabel('y_i');
title('fda');