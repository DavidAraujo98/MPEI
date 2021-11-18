n = 100;
lambda = 0.02;

lambda = lambda * n;

k = 0;
prob_k0 = lambda^k * exp(-lambda) / factorial(k);

k = 1;
prob_k1 = lambda^k * exp(-lambda) / factorial(k);

prob_t = prob_k0 + prob_k1;

fprintf("Probabilidade: %d\n", prob_t);