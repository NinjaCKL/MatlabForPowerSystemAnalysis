x0 = [1, 0];                          % initial conditions
tspan = [0, 5];                       % time interval
[t,x] = ode23('pendulum', tspan, x0);        
subplot(2,1,1),plot(t,x)
title('Time response of pendulum on rigid rod')
xlabel('t,  sec')
text(3.3,3.1,'Velocity')
text(3.3,1.25,'Angle, rad')
th= x(:,1);   w = x(:,2);
subplot(2,1,2),plot(th, w)
title('Phase plane plot of pendulum')
xlabel('Position,  rad')
subplot(111)
