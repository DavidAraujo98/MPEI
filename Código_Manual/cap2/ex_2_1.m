% determinação dos acontecimentos
S=0:9;
A=S(find(rem(S,2)==0 & S>0));
B=S(find(rem(S,3)==0 & S>0));
C=S(find(S<3));
D=union(A,B);
E=intersect(A,C);

% determinação das probabilidades e impressão dos resultados
pa=length(A)/length(S);
aux=sprintf('%d,',S);fprintf(1,'S={%s}\n',aux(1:end-1));
aux=sprintf('%d,',A);
fprintf(1,'A={%s} -> P[A]=%4.2f\n',aux(1:end-1),pa);

pb=length(B)/length(S);
aux=sprintf('%d,',B);
fprintf(1,'B={%s} -> P[B]=%4.2f\n',aux(1:end-1),pb);

pc=length(C)/length(S);
aux=sprintf('%d,',C);
fprintf(1,'C={%s} -> P[C]=%4.2f\n',aux(1:end-1),pc);

pd=length(D)/length(S);
aux=sprintf('%d,',D);
fprintf(1,'D={%s} ->  P[D]=%4.2f\n',aux(1:end-1),pd);

pe=length(E)/length(S);
aux=sprintf('%d,',E);
fprintf(1,'E={%s} -> P[E]=%4.2f\n',aux(1:end-1),pe);
