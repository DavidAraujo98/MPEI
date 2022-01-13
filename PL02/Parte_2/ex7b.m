n = 1;
p = 15;
k = 10;

% k < 10
x = 0;
for i = 0:k
    x = x + poisson_dist(n,i,p);
end

% Poisson
fprintf("Distribuição Poisson: %d\n", 1-sum);