E = 1e5;
p = 0.5;
l = 2;

mx = rand(l,E)>p;
boys = sum(mx);

one_boy = sum(boys >=1);
two_boys = sum(boys == 2);

p = (two_boys)/(one_boy);

disp(p);