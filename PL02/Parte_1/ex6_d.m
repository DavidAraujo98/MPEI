Exp = 1e5;

mx = randi(3,2,Exp);

n_2 = sum(sum(mx==2)>=1);
n_12 = sum(sum(mx)==3);

prob = n_12/n_2;

disp(prob);