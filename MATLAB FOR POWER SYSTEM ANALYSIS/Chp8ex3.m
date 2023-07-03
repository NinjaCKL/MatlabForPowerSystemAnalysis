fprintf('\n Wait simulation is in process. \n')
VF = 400; rF = 0.4; iF0 = VF/rF;
f = 60;    w = 2.*pi*f;
deg = 0;     d = deg*pi/180;
t0 = 0 ; tfinal = 0.80;
i0 = [0; iF0; 0; 0;];           % Initial currents
%[t,i] = ode45('llshort', t0, tfinal, i0);         % use for MATLAB 4
tspan = [t0, tfinal];                              % use for MATLAB 5
[t,i] = ode45('llshort', tspan, i0);               % use for MATLAB 5
ib=i(:,1);  iF=i(:,2);    % ib = Armature current  iF=Field current
figure(1), plot(t,ib), xlabel('t, sec'), ylabel('i_b, A'), grid
title(['Line-line short circuit  i_b,  ','\delta = ', num2str(deg),'\circ'])
figure(2), plot(t,iF), xlabel('t, sec'), ylabel('i_F, A'), grid
title(['Line-line short circuit i_F, ','\delta = ',num2str(deg),'\circ'])
