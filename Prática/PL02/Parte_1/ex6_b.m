Exp = 1e5;

mx = randi(3,2,Exp);

prob = sum(sum(mx==1)>=1)/Exp;

disp(prob);