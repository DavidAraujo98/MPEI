% Problema do estudante vs meteorologista
% Considere-se as linhas como Previsão (P) e as colunas como Tempo observado (T) para o meteorologista

disp('Para o meteorologista:')
pChuva=0.25;pSol=0.75;
pAcertoDadoPChuva=1;pAcertoDadoPSol=1/3;
% estas probabilidades ocorrem quando temos sucesso na previsão, i.e. T=P
pPChuvaTChuva  =  pAcertoDadoPChuva * pChuva;
pPSolTSol  =  pAcertoDadoPSol * pSol;
%  prob(T=SOL | P=CHUVA)  =0
pFalhaDadoPChuva=1 - pAcertoDadoPChuva;
pPSolTChuva=pFalhaDadoPChuva * pChuva;
pFalhaDadoPSol=1 - pAcertoDadoPSol;
pPChuvaTSol=pFalhaDadoPSol * pSol;
% função massa de probabilidade de T/S
pPTm= [ pPChuvaTChuva    pPChuvaTSol
    pPSolTChuva      pPSolTSol ];
pAcerto=pPTm(1,1)+pPTm(2,2);
fprintf(1,'prob.de acerto do meteorologista%5.2f\n',pAcerto);
%% Avaliação da independência da Previsão e o Tempo observado
% prob. marginais
pPm=sum(pPTm,2);pTm=sum(pPTm,1);
% probabilidade conjunta se independentes
pPpTm=pPm*pTm;
% comparação da prob. cojunta com o produto das prob.marginal pPTm,pPpTm

fprintf(1,'Prob Conjunta:\n');
fprintf(1, '\t|%.2f    %.2f|\n', pPTm ) ;
fprintf(1,'\nProduto Probabilidades:\n');
fprintf(1, '\t|%.2f    %.2f|\n', pPpTm ) ;

dif=pPTm - pPm*pTm;
if dif~=0
    disp('as variáveis não são independentes')
else
    disp('as variáveis são independentes')
end
% Para o estudante
disp('---------------------')
disp('Para o estudante:')
pAcertoDadoPChuva=0;pAcertoDadoPSol=1;
% estas probabilidades ocorrem quando temos sucesso na previsão, i.e. T=P
pPChuvaTChuva  =  pAcertoDadoPChuva * pChuva;
pPSolTSol  =  pAcertoDadoPSol * pSol;
pFalhaDadoPSol=1 - pAcertoDadoPSol;
%  prob(T=SOL | P=CHUVA)  =0
pFalhaDadoPChuva=1 - pAcertoDadoPChuva;
pPSolTChuva=pFalhaDadoPChuva * pChuva;
pPChuvaTSol=pFalhaDadoPSol * pSol;
% função massa de probabilidade conjunta
pPTe= [ pPChuvaTChuva    pPChuvaTSol
    pPSolTChuva      pPSolTSol ] ;
pAcerto=pPTe(1,1)+pPTe(2,2);   % dará 0.5

fprintf(1,'prob.de acerto do estudante%5.2f\n',pAcerto);
%% Avaliação da independência da Previsão e o Tempo observado
% prob. marginais
pPe=sum(pPTe,2);
pTe=sum(pPTe,1);
% probabilidade conjunta se independentes
pPpTe=pPe*pTe;
% comparação da prob. cojunta com o produto das prob.marginais pPTe,pPpTe
fprintf(1,'Prob Conjunta:\n');
fprintf(1, '\t|%.2f    %.2f|\n', pPTe ) ;
fprintf(1,'\nProduto Probabilidades:\n');
fprintf(1, '\t|%.2f    %.2f|\n', pPpTe ) ;

dif=pPTe - pPe*pTe;
if dif~=0
    disp('as variáveis não são independentes')
else
    disp('as variáveis são independentes')
end

