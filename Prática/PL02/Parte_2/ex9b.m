N = 1e5;
med = 14;
dp = 2;

X = randn(1,N) * dp + med;
p = sum(X>10 & X<18);

disp(p/N);