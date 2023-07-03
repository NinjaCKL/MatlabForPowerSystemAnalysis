r = 1.25; g = 0; f = 60;
L = 7.96;       % milli-Henry
C = 58.07;    % micro-Farad
Length = 1;  VR3ph = 11;
VR = VR3ph/sqrt(3) + j*0;   % kV (receiving end phase voltage)
[Z, Y, ABCD] = rlc2abcd(r, L, C, g, f, Length);
AR = acos(0.85);
SR = 4.27*(cos(AR) + j*sin(AR));     %   MVA (receiving end power)
IR = conj(SR)/(3*conj(VR));         %  kA (receiving end current)
VsIs = ABCD* [VR; IR];              %      column vector [Vs; Is]
Vs = VsIs(1);
Vs3ph = sqrt(3)*abs(Vs);            % kV(sending end L-L voltage)
Is = VsIs(2); Ism = 1000*abs(Is);   %     A (sending end current)
pfs= cos(angle(Vs)- angle(Is));     %  (sending end power factor)
Ss = 3*Vs*conj(Is);                 %     MVA (sending end power)
REG = (Vs3ph/abs(ABCD(1,1)) - VR3ph)/VR3ph *100;
fprintf(' Is = %g A', Ism), fprintf('  pf = %g\n', pfs)
fprintf(' Vs = %g L-L kV\n', Vs3ph)
fprintf(' Ps = %g MW', real(Ss)),
fprintf('  Qs = %g Mvar\n', imag(Ss))
fprintf(' Percent voltage Reg. = %g\n', REG)
