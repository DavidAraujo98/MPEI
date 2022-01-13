x = linspace(0,10,50);
tiledlayout(2,1)

% a)
%xi = 1:100;
%p = ones(1,100)/100;

% Função Massa de Probabilidade
%nexttile;
%stem(xi,p), xlabel('x_1'), ylabel('y_i');
%title('fmp');

% Função de Distribuição Acumulada
%nexttile;
%p = cumsum(p);
%stairs(xi,p), xlabel('x_1'), ylabel('y_i');
%title('fda');

% b)
xi = [5,50,100];
p = [0.9, 0.09, 0.01];

% Função Massa de Probabilidade
nexttile
stem(xi,p), xlabel('x_1'), ylabel('y_i');
axis([0 110 -0.1 1.2])
title('fmp');

% Função de Distribuição Acumulada
nexttile
p = cumsum(p);
stairs(xi,p), xlabel('x_1'), ylabel('y_i');
axis([0 110 0.8 1.2])
title('fda');