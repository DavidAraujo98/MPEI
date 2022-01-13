E = 1e5;
p = 0.5;
l = 2;

mx = rand(l,E)>p;
one_boy = sum(mx(1,:)==1);

boys = sum(mx);
two_boys = sum(boys == 2);

p = two_boys/one_boy;

disp(p);