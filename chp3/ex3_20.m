%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 3.20 %%

%% high speed section %%
k = 4*10^5;
m = 1007;
nf = sqrt(k/m);
L = 0.4;
Y = 0.2;
syms v
Zh = ((Y*((pi/L)*v)^2)/nf)*(((pi/L)*v)/abs((nf^2)-((pi/L)*v)^2));
figure(1)
ezplot(Zh,[3,10,0,1])
title('Response Plot')
hold on

%% low speed section %%
syms v
Zl = ((Y*((pi/L)*v)^2)/nf)*(nf/abs((nf^2)-((pi/L)*v)^2));
figure(2)
ezplot(Zl,[0,2,0,0.5])
title('Response Plot')