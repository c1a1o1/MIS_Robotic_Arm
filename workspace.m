function workspace3
reset(gca);
r = 20;
[phi,theta0]= meshgrid(7*pi/6:.1:11*pi/6,pi/6:.1:5*pi/6);
    x = r*cos(phi);
    y = r*sin(phi).*cos(theta0);
    z = r*sin(phi).*sin(theta0);
 surf(x,y,z);
hold on
r = 115;
[phi,theta0]= meshgrid(7*pi/6:.1:11*pi/6,pi/6:.1:5*pi/6);
    x = r*cos(phi);
    y = r*sin(phi).*cos(theta0);
    z = r*sin(phi).*sin(theta0);
 surf(x,y,z);
 hold on
 phi = 11*pi/6-0.1;
[r,theta0]= meshgrid(linspace(20,115,21),pi/6:.1:5*pi/6);
    x = r.*cos(phi);
    y = r.*sin(phi).*cos(theta0);
    z = r.*sin(phi).*sin(theta0);
  surf(x,y,z);
 hold on
 phi = 7*pi/6;
[r,theta0]= meshgrid(linspace(20,115,21),pi/6:.1:5*pi/6);
    x = r.*cos(phi);
    y = r.*sin(phi).*cos(theta0);
    z = r.*sin(phi).*sin(theta0);
  surf(x,y,z);
 hold on
 theta0 = pi/6;
[r,phi]= meshgrid(linspace(20,115,21),7*pi/6:.1:11*pi/6);
    x = r.*cos(phi);
    y = r.*sin(phi).*cos(theta0);
    z = r.*sin(phi).*sin(theta0);
 surf(x,y,z);
 hold on
  theta0 = 5*pi/6 - 0.1;
[r,phi]= meshgrid(linspace(20,115,21),7*pi/6:.1:11*pi/6);
    x = r.*cos(phi);
    y = r.*sin(phi).*cos(theta0);
    z = r.*sin(phi).*sin(theta0);
  surf(x,y,z);
 hold on
 axis('equal');