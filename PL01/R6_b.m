N = 1e5;

mx = randi([1,6],2,N);
rs = sum(sum(mx)==9);
p = rs/N;

format long;

disp(p);
