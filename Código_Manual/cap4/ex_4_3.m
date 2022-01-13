p=0.5;N=4;
for i=0:N
    pk(i+1)=factorial(N)/factorial(N-i)/factorial(i)*...
        (p^i*(1-p)^(N-i));
end
pk=[0 pk 0];
stem((-1:N+1),pk,'.','LineWidth',3)
xlabel('xk=k'),ylabel('pX(xk)')
axis([-.5 N+.5 0 max(pk)*1.05])