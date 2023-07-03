n = input('Enter an odd integer ');
w_0t = 0:.01:2*pi;
x =0;
for k = 1:2:n;
     x = x + 1/k*sin(k*w_0t);
end
x=4/pi*x;
plot(w_0t, x), xlabel('w_0t, s')
text(3.5,.7,['Sum of ', num2str((n+1)/2),' sine waves'])