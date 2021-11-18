n = 50;
N = 1e5;

mx = randi([1,50],10,N)<8;
prob = sum(sum(mx)==3)/N;

disp(prob);