E1=input('Source # 1 Voltage Mag. = ');
a1=input('Source # 1 Phase Angle  = ');
E2=input('Source # 2 Voltage Mag. = ');
a2=input('Source # 2 Phase Angle  = ');
R=input('Line Resistance = ');
X= input('Line Reactance = ');
Z= R + j*X;                                      % line impedance
a1 = (-30+a1:5:30+a1)';    % change a1 by +/- 30 deg., col. array
a1r = a1*pi/180;                       % convert degree to radian
k=length(a1);
a2=ones(k,1)*a2;        % create col. array of same length for a2
a2r = a2*pi/180;                       % convert degree to radian
V1=E1.*cos(a1r) + j*E1.*sin(a1r);
V2=E2.*cos(a2r) + j*E2.*sin(a2r);
I12 = (V1 - V2)./Z;  I21=-I12;
S1= V1.*conj(I12);  P1 = real(S1);  Q1 = imag(S1);
S2= V2.*conj(I21);  P2 = real(S2);  Q2 = imag(S2);
SL= S1+S2;        PL = real(SL);  QL = imag(SL);
Result1=[a1, P1,  P2, PL];
disp('  ')
disp('   Delta 1     P_1       P_2       P_L ')
disp(Result1)
plot(a1, P1,  a1, P2,  a1, PL), grid
text(-26, -550, 'P_1'), text(-26, 600,'P_2'), text(-26, 115, 'P_L')
xlabel('Source #1 Voltage Phase Angle, \delta_1'), ylabel('P, Watts')
