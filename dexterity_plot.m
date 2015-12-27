x = 600;
y = 0;
l1 =705; l2 = 882; l3 = 625; 
dex =0;
[r,phi]= meshgrid(linspace(20,115,96), linspace(7*pi/6,11*pi/6,96));
x1 = x - (l3.*cos(phi));
    y1 = y - (l3*sin(phi));
    a = sqrt(x1.^2 + y1.^2);
    y2 = -y1./a;
    x2 = -x1./a;
    gamma = atan2(y2,x2);
    c = (- x1.^2 - y1.^2 - l1.^2 + l2.^2)/(2.*l1.*a);
    d = acos(c);
    theta1 = gamma + d;
    if theta1 > 180
       theta1 = gamma - d;
    end
    e = (y1 - l1.*sin(theta1))./l2;
    f = (x1 - l1.*cos(theta1))./l2;
    theta2 = atan2(e,f) - theta1;
    theta3 = (phi)- (theta1 + theta2);
    if theta1 < 0
        theta1 = theta1 + 2*pi;
    end
    if theta2 < 0
        theta2 = theta2 + 2*pi;
    end
    if theta3 < 0
        theta3 = theta3 + 2*pi;
    end
 for i = 1:96
      for j= 1:96
   r1 = r(i,j);
   theta11 = theta1(i,j);
   theta21 = theta2(i,j);
   theta31 = theta3(i,j);
dex(i,j) = -(1/2)*(-1379521148877 - 3182280192*r1 - 2549904*(r1^2) - 1243620*(389377 + 1248*r1 + r1^2)*cos(theta21) + 386647676100*cos(2*theta21) - 547097713344*cos(theta31) - 876759156*r1*cos(theta31) + 605808315000*cos(2*theta31) + 1941698304*r1*cos(2*theta31) + 1555848*(r1^2)*cos(2*theta31) - 1759680*cos(theta21 + theta31) - 2820*r1*cos(theta21 + theta31) + 387058715775*cos(2*(theta21 + theta31)) + 1240574400*r1*cos(2*(theta21 + theta31)) + 994050*(r1^2)*cos(2*(theta21 + theta31)) +  547093310400*cos(2*theta21 + theta31) + 876752100*r1*cos(2*theta21 + theta31) +  484234537500*cos(theta21 + 2*theta31) + 1552037760*r1*cos(theta21 + 2*theta31) +  1243620*r1^2*cos(theta21 + 2*theta31))*(705*sin(theta11) + 882*sin(theta11 + theta21) + (624 + r1)*sin(theta11 + theta21 + theta31))^2        
end
end  
%dex = ((-(1/2)*(-1379521148877 - 3182280192.*r - 2549904*(r.^2) - 1243620*(389377 + 1248.*r + (r.^2))*cos(theta2) + 386647676100*cos(2*theta2) - 547097713344.*cos(theta3) - 876759156.*r.*cos(theta3) + 605808315000.*cos(2*theta3) + 1941698304.*r*cos(2*theta3) + 1555848.*(r.^2)*cos(2.*theta3) - 1759680.*cos(theta2 + theta3) - 2820.*r.*cos(theta2 + theta3) + 387058715775.*cos(2*(theta2 + theta3)) + 1240574400.*r.*cos(2*(theta2 + theta3)) + 994050.*(r.^2).*cos(2.*(theta2 + theta3)) +  547093310400.*cos(2*theta2 + theta3) + 876752100.*r.*cos(2*theta2 + theta3) +  484234537500.*cos(theta2 + 2*theta3) + 1552037760.*r.*cos(theta2 + 2*theta3) +  1243620.*(r.^2).*cos(theta2 + 2*theta3)).*(705.*sin(theta1) + 882.*sin(theta1 + theta2) + (624 + r).*sin(phi))^2)./);
%dex = (-1/2).*((-1).*l1.^2+(-2).*l2.^2+(-1).*l1.^2.*l2.^2+(-6).*l3.^2+(-2).*l1.^2.*l3.^2+(-2).*l2.^2.*l3.^2+(-12).*l3.*r+(-4).*l1.^2.*l3.*r+(-4).*l2.^2.*l3.*r+(-6).*r.^2+(-2).*l1.^2.*r.^2+(-2).* l2.^2.*r.^2+(-2).*l1.*l2.*(1+l3.^2+2.*l3.*r+r.^2).*cos(theta2)+ l1.^2.*l2.^2.*cos(2.*theta2)+(-8).*l2.*l3.*cos(theta3)+(-2).*l1.^2.*l2.*  l3.*cos(theta3)+(-8).*l2.*r.*cos(theta3)+(-2).*l1.^2.*l2.*r.*cos(theta3)+(-2).*l2.^2.*cos(2.*theta3)+2.*l2.^2.*l3.^2.*cos(2.*theta3)+4.*l2.^2.* l3.*r.*cos(2.*theta3)+2.*l2.^2.*r.^2.*cos(2.*theta3)+(-4).*l1.*l3.*cos(  theta2+theta3)+(-4).*l1.*r.*cos(theta2+theta3)+(-1).*l1.^2.*cos(2.*(theta2+theta3))+ 2.*l1.^2.*l3.^2.*cos(2.*(theta2+theta3))+4.*l1.^2.*l3.*r.*cos(2.*(theta2+  theta3))+2.*l1.^2.*r.^2.*cos(2.*(theta2+theta3))+2.*l1.^2.*l2.*l3.*cos(2.*  theta2+theta3)+2.*l1.^2.*l2.*r.*cos(2.*theta2+theta3)+(-2).*l1.*l2.*cos(theta2+  2.*theta3)+2.*l1.*l2.*l3.^2.*cos(theta2+2.*theta3)+4.*l1.*l2.*l3.*r.*cos(  theta2+2.*theta3)+2.*l1.*l2.*r.^2.*cos(theta2+2.*theta3)).*(l1.*sin(theta1)+l2.*  sin(theta1+theta2)+(l3+r).*sin(theta1+theta2+theta3)).^2
theta0 = 5*pi/6;
% [r,phi]= meshgrid(linspace(20,115,96), linspace(7*pi/6,11*pi/6,96));
    x = r.*cos(phi);
    y = r.*sin(phi).*cos(theta0);
    z = r.*sin(phi).*sin(theta0);
    surf(x,y,z,dex);