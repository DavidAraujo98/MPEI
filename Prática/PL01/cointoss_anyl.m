function r = cointoss_anyl(p, n, k)
    r = nchoosek(n,k)*p^k*(1-p)^(n-k);
end