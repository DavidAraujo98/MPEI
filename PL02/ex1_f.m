E = 1e5;
p = 0.5;
n = 5;

mx = rand(5,E)>p;

one_boy = sum(sum(mx)>=1);
two_boys = sum(sum(mx)>=2);

prob = two_boys/one_boy;

disp(prob);