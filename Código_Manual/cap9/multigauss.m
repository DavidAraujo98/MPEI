% função  para gerar n amostras de um vetor de m variáveis conjuntamente gaussianas com matriz de correlação sigma e média med
function y=multigauss(n,m,sigma,med)
[i,j]=size(sigma);
k=max(size(med));
if m~=i|m~=j|m~=k
    error('dimensões erradas')
end
% verificação da matriz sigma
if ~issymmetric(sigma)
    error( 'matriz sigma não é simétrica')
end
E=eig(sigma);
if isempty(find(E<0))~=1
    error('sigma não é definida positiva')
end
x=randn(m,n);
[u,d,v]=svd(sigma);
a=u*sqrt(d);
y=a*x;
z=ones(m,n);
for i=1:k
    z(i,:)=z(i,:).*med(i);
end
y=y+z;
% visualização para m=2
if m==2
    close
    plot(y(1,:),y(2,:),'+k')
end
xlabel('x1'),ylabel('x2')
disp('média:');mean(y')
disp('sigma final:');cov(y')