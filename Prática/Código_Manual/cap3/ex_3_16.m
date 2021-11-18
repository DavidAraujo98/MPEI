% simulação do problema da coincidência
% N número bolas na extração
% M número de experiências a realizar
N=[5, 10 100];M=1000;
for k=1:length(N)
    x=(1:N(k));
    p=zeros(1,M);
    for j=1:M 
        y=randperm(N(k));
        if sum(x-y==0)~=0
            p(j)=1;
        end
    end
    t=(-1).^(x-1)./factorial(x);pt=sum(t);
    fprintf(1,'número de bolas %5.0f prob.teórica %7.3f prob.estimada %7.3f\n', N(k),pt,mean(p))
end


