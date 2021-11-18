clear;figure
[x,y]=meshgrid(0:.2:5,0:0.2:5);
z=(1-exp(-x)).*(1-exp(-y));
surf(x,y,z,'Facecolor',[1 1 1])
xlabel('x'),ylabel('y'),zlabel('FXY(x,y)')
axis([0 5 0 5 0 1])
figure
x=linspace(0,5,1000);
plot(x,1-exp(-x),'k','Linewidth',1.5)
xlabel('x'),ylabel('FX(x)')
figure
y=linspace(5,0,1000);
plot(y,1-exp(-y),'k','Linewidth',1.5)
xlabel('y'),ylabel('FY(y)')
