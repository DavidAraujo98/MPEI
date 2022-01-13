p=0.3;
n=5;
k=2;
N=1e5;

lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)<=k;
sem = sum(sucessos)/N;

anyl = nchoosek(n,0)*p^0*(1-p)^(n-0);
for i = 1:2
    anyl = anyl + nchoosek(n,i)*p^i*(1-p)^(n-i);
end

fprintf("Semulation: %4.6f\n",sem);
fprintf("Analytical: %4.6f",anyl);