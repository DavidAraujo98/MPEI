[x,y]=meshgrid(0:.05:1.5,0:.05:1.5);
z=x.*y;
z(find(x>=1 & y>=1))=1;
z(find(x<1&y>1))=x(find(x<1&y>1));
z(find(y<1&x>1))=y(find(y<1&x>1));
surf(x,y,z,'Facecolor',[.9 .9 .9]) %,colormap gray
xlabel('x'),ylabel('y'),zlabel('FXY(x,y)')