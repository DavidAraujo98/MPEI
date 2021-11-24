function [linf,lsup]=intconfmedia2(media,var,prob,n)
% função para calcular o intervalo de confiança da média
% media : valor médio das observações
% sigma : variância das observações
% prob  : probabilidade do intervalo
% n     : número de obervações
talfa2=tinv(1-(1-prob)/2,n-1);sigma=sqrt(var);
del=talfa2*sigma/sqrt(n);
linf=media-del;lsup=media+del;