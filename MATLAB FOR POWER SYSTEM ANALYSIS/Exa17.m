t= 0:0.1:16*pi;
x=exp(-0.03*t).*cos(t); 
y=exp(-0.03*t).*sin(t);
z=t;
figure(1), plot3(x, y, z)
axis off


t=-4:.3:4;
[x,y]=meshgrid(t,t);
z=sin(x).*cos(y).*exp(-(x.^2+y.^2).^0.5); 
figure(2), mesh(x,y,z)
axis off


x= -3:0.3:3; y=x;
[x, y]=meshgrid(x,y);
z=-0.1./(x.^2+y.^2+.1);
figure(3), meshz(z)
axis off
view(-35, 60)

t=0:.2:20;
x=t; y=t.*cos(t);
z=exp(0.1*t);
figure(4), stem3(x,y,z)
axis off

t=0:pi/5:6*pi;
p=3+sin(t);
figure(5), cylinder(p)
axis off

[x,y,z]=sphere(24);
figure(6), surf(x-2, y-2, z-1);
hold on
figure(6), surf(2*x, 2*y,2*z);
axis off



% Cartezian plot of Bessel function J0(sqrt(x^2+y^2))

[x,y]=meshgrid(-12:.7:12, -12:.7:12);
                           % meshgrid transforms the specified domain
                           % into array x and y for evaluating z
r=sqrt(x.^2+y.^2);z= bessel(0,r);
m=[-45 60];
figure(7), mesh(z,m)                    % 3-D mesh plot
axis off

[x,y,z]=peaks(20);
[nx, ny]=gradient(z,1,1);
figure(8), contour(x,y,z,10)
hold on
quiver(x,y,nx,ny)

