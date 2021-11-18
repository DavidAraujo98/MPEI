Exp = 1e5;
n = 4;

m = randn(n,Exp) < 0.5;
poss = sum(m);

xi = 1:n;
p = zeros(1,4);
for i = 1:n
    p(i) = sum(poss==i)/Exp;
end

% Função Massa de Probabilidade
nexttile
stem(xi,p), xlabel('x_1'), ylabel('y_i');
axis([0 n+1 -0.05 0.5])
title('fmp');

% Valor esperado (média)
valor_esperado = xi * p.';
fprintf("Valor esperado: %2.4f\n", valor_esperado);

% Variância
variancia = xi.^2 * p.' - valor_esperado^2;
fprintf("Variância: %2.4f\n", variancia);

% Desvio padrão
desvio_padrao = sqrt(variancia);
fprintf("Desvio padrão: %2.4f\n", desvio_padrao);