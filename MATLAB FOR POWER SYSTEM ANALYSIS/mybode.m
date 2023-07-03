% The function mybode returns the magnitude and phase
% angle of the frequency response transfer function. 
% num and den are the numerator and denominator
% coefficients in descending order. w is the frequency
% array in rad/sec. 
function[mag, phase] =  mybode(num, den, w);
m=length(num); n=length(den);
N=num(m); D=den(n);
s=j*w;
for k=1:m-1
   N=N+num(m-k)*s.^k;
end
for k=1:n-1
   D=D+den(n-k)*s.^k;
end
H=N./D;
mag=abs(H);
phase=angle(H)*180/pi;
   
