% programa que implementa o algoritmo Zigurate para n=8

clear,close all
% definição de constantes
x=[ 0. 0.7384 1.0274 1.2630 1.4854 1.7165 1.9819 2.3384];
fx=[1. 0.7614 0.5899 0.4504 0.3318 0.2292 0.1403 0.0650];
r=x(8);v=0.1762;m=1;n=0;
while m<100000
    % 1º passo escolha do retângulo e do sinal
    k=randi(16,1);flag=1;i=k;
    if k>8
        i=k-8;flag=-1;
    end
    % 2ºpasso
    if i~=8
        z=rand*x(i+1);
        if z<=x(i)
            amostra(m)=z*flag;m=m+1;
        else
            y=(fx(i)-fx(i+1))*rand;
            if y<(exp(-z*z/2)-fx(i+1))
                amostra(m)=z*flag;m=m+1;
            end
        end
    else
        % 3º passo i=8
        z=rand*v/fx(8);
        if z<=r
            amostra(m)=z*flag;m=m+1;
        else
            % u=1;w=1;
            u=-log(rand)/r;w=-log(rand);
            while w<=u
                u=u*(-log(rand)/r);w=w-log(rand);
            end
            amostra(m)=(r+u)*flag;m=m+1;
        end
    end
    n=n+1;
end
% resultados e gráficos
fprintf(1,'média= %6.3f desvio padrão= %6.3f\n', mean(amostra),std(amostra));
fprintf(1,'taxa de rejeição= %6.1f%%\n',100*(1-m/n));
histogram(amostra,50,'Normalization','pdf','Facecolor','none');
hold on
t=linspace(-5,5,1000);
plot(t,normpdf(t),'--k','Linewidth',2)
legend('histograma','função N(0,1)')
hold off