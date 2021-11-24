n = 8000;
p = 1/1000;
k = 7;

% Distribuição binomial
fprintf("Distribuição Binomial: %2.4f\n", binomial_dist(n,k,p));

% Poisson
fprintf("Distribuição Poisson: %2.4f\n", poisson_dist(n,k,p));