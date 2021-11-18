N=1e5;     % num de experiências
nd=9;      % número de dígitos
nfd=6;     % número de funções de dispersão

p=1e5+1;
while (~isprime(p)) p=p+2; end
M=p;       % M primo

% para função de dispersão universal
R=fix(floor(rand(nfd,nd)*M)); 

multiplic=10.^(nd-1:-1:0); % auxiliar
r=zeros(nfd,N); % matriz de resultados

for i=1:N
    % gerar número
    telef=randi(9,1,9)*multiplic';
    %  converter núm telefone em vetor
    x=num2str(telef)'-'0';
    %  h(x)= R x  mod m
    hx=mod(R * x,M);
    r(:,i)=hx;
    
    %if mod(i,1e3)==0 fprintf(1,'%d\n',i); end
end    
