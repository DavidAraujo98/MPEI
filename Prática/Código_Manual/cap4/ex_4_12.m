k=(1:6);pk=ones(1,6)/6;N=5;
for i=1:N
    M(i)=k.^i*pk';
end
for i=1:N
    MC(i)=(k-M(1)).^i*pk';
end

fprintf(1,'%7s %15s %15s\n','Ordem','Momento', 'Momento Central')
for i=1:N
    fprintf(1,'%7.0f %15.2f %15.2f\n',i,M(i),MC(i))
end