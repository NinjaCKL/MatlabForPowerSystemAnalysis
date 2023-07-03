num=[1000 1000], den=[1 110 1000 1];
w=logspace(-1, 3);   % logarithmic range from 0.1 to 1000
[mag, phase]=mybode(num, den, w);
subplot(2,1,1), semilogx(w, mag), grid
xlabel('\omega'), ylabel('Magnitude')
subplot(2,1,2), semilogx(w, phase), grid
xlabel('\omega'), ylabel('\theta, degree')
