p=0.3;
n=5;
k=3;
N=1e5;
sem=cointoss(p,n,k,N);
anyl=cointoss_anyl(p,n,k);
fprintf("Semulation: %4.6f\n",sem);
fprintf("Analytical: %4.6f",anyl);