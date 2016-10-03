%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.3 %%

m = 100; % unit:kg
c = 30; % unit:kg/s
k = 200; % unit:N/m
% x0 (variable) unit:m
% v0 (variable) unit:m/s
tf = 30;

vtb1_1_mod(m,c,k,0,0.001,tf)