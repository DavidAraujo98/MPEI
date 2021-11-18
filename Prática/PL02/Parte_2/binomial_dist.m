function r = binomial_dist(n,k,p)
    comb = nchoosek(n,k);
    a = comb * p^k;
    r = a * (1-p)^(n-k);
end