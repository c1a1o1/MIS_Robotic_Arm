function thetas = revisedinverse1(x,y,l1,l2,l3,phi)
    x1 = x - (l3*cos(phi));
    y1 = y - (l3*sin(phi));
    a = sqrt(x1^2 + y1^2);
    y2 = -y1/a;
    x2 = -x1/a;
    gamma = atan2(y2,x2);
    c = (- x1^2 - y1^2 - l1^2 + l2^2)/(2*l1*a);
    d = acos(c);
    theta1 = gamma + d;
    e = (y1 - l1*sin(theta1))/l2;
    f = (x1 - l1*cos(theta1))/l2;
    theta2 = atan2(e,f) - theta1;
    theta3 = (phi)- (theta1 + theta2);
    theta21 = gamma - d;
    e = (y1 - l1*sin(theta21))/l2;
    f = (x1 - l1*cos(theta21))/l2;
    theta22 = atan2(e,f) - theta1;
    theta23 = (phi)- (theta21 + theta22);
    if theta1 < 0
        theta1 = theta1 + 2*pi;
    end
    if theta2 < 0
        theta2 = theta2 + 2*pi;
    end
    if theta3 < 0
        theta3 = theta3 + 2*pi;
    end
    if theta21 < 0
        theta21 = theta21 + 2*pi;
    end
    if theta22 < 0
        theta22 = theta22 + 2*pi;
    end
    if theta23 < 0
        theta23 = theta23 + 2*pi;
    end
    thetas = [theta1,theta2,theta3,theta21,theta22,theta23].*180/pi;
    
end