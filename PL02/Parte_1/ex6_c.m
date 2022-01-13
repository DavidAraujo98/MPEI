Exp = 1e5;

mx = randi(3,2,Exp);

% OR de 1 e 2
prob = sum(sum(mx<=3)>=1)/Exp;

disp(prob);

% XOR de 1 e 2
prob = sum(sum(mx)>3)/Exp;

disp(prob);