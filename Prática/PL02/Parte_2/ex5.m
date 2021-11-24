N = 1e5;

% Avião 2 motores, falhar +50% --> k=2
k = 2;

r = 0;
i = 1;
for p = 0:0.005:0.5
    r(i) = binomial_dist(N,k,p);
    i = i+1;
end

disp(r);
plot((0:0.005:0.5), r);