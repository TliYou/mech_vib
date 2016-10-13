%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.3 %%

m = 90; % unit:kg
c = 400; % unit:kg/s
k = 150; % unit:N/m
% x0 (variable) unit:m
% v0 (variable) unit:m/s
tf = 6;
vtb1_1_mod(m,c,k,0.0003,0,tf)
vtb1_1_mod(m,c,k,0,0.001,tf)
vtb1_1_mod(m,c,k,-0.0003,0,tf)

legend('x(0) = 0.3mm, v(0) = 0mm/s',...
    'x(0) = 0mm, v(0) = +1mm/s',...
    'x(0) = -0.3mm, v(0) = 0mm/s')