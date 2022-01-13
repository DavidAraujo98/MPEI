pxy=ones(2,2)/4
FXY=cumsum(cumsum(pxy)')
%    pxy= 0.2500 0.2500
%         0.2500 0.2500
%    FXY= 0.2500 0.5000
%        0.5000 1.0000

[x,y]=meshgrid(-0.5:0.05:2,-0.5:0.05:2);
FXY=zeros(length(x),length(y));
FXY(find(x>=0 & y>=0))=0.25;
FXY(find(y>=1 & x<1))=0.5;
FXY(find(x>=1 & y>=1))=1;
FXY(find(x<0 | y<0))=0; 

figure
surf(x,y,FXY,'Facecolor',[1 1 1])
xlabel('x'),ylabel('y'),zlabel('FXY(x,y)')
view(-45,45)