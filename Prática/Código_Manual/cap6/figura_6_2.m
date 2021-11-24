clear
mx=0;my=0;sx=1;sy=0.6;rxy=0.8;
[x,y]=meshgrid(-3:.1:3,-3:.1:3);
x=(x-mx)/sx;y=(y-my)/sy;
expoente=x.^2+y.^2-2*rxy^2*x.*y;
expoente=-expoente/(1-rxy^2);
z=exp(expoente/(2*pi*sx*sy*sqrt(1-rxy^2)));
surf(x,y,z,'Facecolor',[1 1 1])
xlabel('x'),ylabel('y'),zlabel('fXY(x,y)')
axis([-3 3 -3 3 0 1])