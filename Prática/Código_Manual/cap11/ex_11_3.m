H=[0   1/2  0  0 
   1/3 0    0  1/2
   1/3 0    0  1/2 
   1/3 1/2  0  0]
N=length(H); r=ones(N,1)/N;
for i=1:100 
    r=H*r;
end
