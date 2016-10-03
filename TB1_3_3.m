%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.3 %%

m = 100; % unit:kg
c = 300; % unit:kg/s
k = 225; % unit:N/m
% x0 (variable) unit:m
% v0 (variable) unit:m/s
tf = 3.5;

vtb1_1_mod(m,c,k,0.0004,0.001,tf)
vtb1_1_mod(m,c,k,0.0004,0,tf)
vtb1_1_mod(m,c,k,0.0004,-0.001,tf)

legend('x(0) = 0.4mm, v(0) = +1mm/s','x(0) = 0.4mm, v(0) = 0mm/s','x(0) = 0.4mm, v(0) = -1mm/s')