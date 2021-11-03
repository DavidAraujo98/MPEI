Exp = 1e5;

mx = randi(3,2,Exp);

l1 = mx(1,:)==1;
l2 = mx(2,:)==2;
temp12 = sum(sum([l1;l2])==2);

prob = temp12/Exp;
disp(prob);