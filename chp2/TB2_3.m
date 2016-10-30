%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp2 toolbox 2.3 %%

% vtb2_3(zeta,rmin,rmax,opt), vtb2_2(zeta,w,wdr,f0,tf)
figure(1)
vtb2_3([0.01 0.02 0.1 0.2 0.75 1.0],0.0,3.0,1)
figure(2)
vtb2_3(0.01,0.0,3.0,1)
figure(3)
vtb2_2(0.5,10,5,1000,1)
hold on
vtb2_2(0.01,10,5,1000,1)
vtb2_2(0.1,10,5,1000,1)
legend('\zeta = 0.5', '\zeta = 0.01', '\zeta = 0.1')