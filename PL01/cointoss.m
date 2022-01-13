function r = cointoss(p, n, k, N)
    lancamentos = rand(n,N) > p;
    sucessos = sum(lancamentos)==k;
    r = sum(sucessos)/N;
end