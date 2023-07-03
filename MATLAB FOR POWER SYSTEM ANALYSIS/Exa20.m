a1 = 4; a0 = 2;
x0 = 1; t0 = 0;                                % Initial state
Dt = 0.01;  tf=15;                  % Step size and final time
t=[]; x=[];                      % Initializing all the arrays
np = (tf -t0)/Dt;
t(1) = t0; x(1) = x0; 
for k=1:np
    c=10*sin(pi*t(k));
    t(k+1)=t(k)+Dt;
    Dx1= c/a1 - a0/a1*x(k);      % Derivative at the beginning  
    x(k+1)=x(k)+Dx1*Dt;                      % Predicted value
    Dx2=c/a1 - a0/a1*x(k+1);%Derivative at the end of interval
    Dxavg=(Dx1+Dx2)/2;    % Average value of the two derivatives
    x(k+1)=x(k) + Dxavg*Dt;                    % Corrected value
end
plot(t, x), grid
xlabel('t,  sec'), ylabel('x(t)')
