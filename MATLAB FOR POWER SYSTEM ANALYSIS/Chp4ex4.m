[GMD, GMRL, GMRC] = gmd;
if GMD ~= 0 | GMRL ~= 0 | GMRC~=0
L=0.2*log(GMD/GMRL)          % mH/Km       Eq. (4.58)
C = 0.0556/log(GMD/GMRC)     % micro F/Km  Eq. (4.92)
else, end