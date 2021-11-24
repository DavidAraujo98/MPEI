function [linf,lsup]=intconfmedia1(media,var,prob,n)
% função para calcular o intervalo de confiança da média conhecida a variância
% media : valor médio das observações
% sigma : variância das observações
% prob  : probabilidade do intervalo
% n     : número de obervações
zalfa2=norminv(1-(1-prob)/2);sigma=sqrt(var)
del=zalfa2*sigma/sqrt(n);
linf=media-del;lsup=media+del;