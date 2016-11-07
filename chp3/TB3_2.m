%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 toolbox 3.2 %%

% vtb3_2(zeta,w,Fo,tf)
z = 0.1;
w = 3.16;
Fo = 30;
tf = 14;
figure (1)
vtb3_2(z,w,Fo,tf)

%calculating mck
k = 1000;
m = (k)/(w^2);
c1 = 2*z*sqrt(k*m);
c2 = 10*c1;
c3 = 1000;

% vtb3_2(m,c,k,Fo,tf)
figure(2)
hold on
vtb3_2(m,c1,k,Fo,tf)
vtb3_2(m,c2,k,Fo,tf)
vtb3_2(m,c3,k,Fo,tf)
legend('c = 63.291','c = 632.911','c = 1000')