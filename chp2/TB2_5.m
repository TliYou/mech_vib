%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp2 toolbox 2.4 %%

% vtb2_6(m,k,dtype,dcoef,dt,tott,x0,v0)
figure(1)
a = 0.05;
vtb2_6(10,100,3,a,.001,2,1,0)
figure(2)
ceq = (8/(3*pi))*a;
vtb2_6(10,100,1,ceq,.001,2,1,0)