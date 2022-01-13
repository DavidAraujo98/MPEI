function r = poisson_dist(n,k,p)
    lambda = p * n;
    r = lambda^k * exp(-lambda) / factorial(k);
end