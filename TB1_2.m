%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.2 %%

% initial condition setting

m = 49.2*10^-3; % unit:kg
c = 0.11; % unit:kg/s
k = 857.8; % unit:N/m
% x0 is input variable
v0 = 0; % unit:m/s
tf = 5;

vtb1_1_mod(m,c,k,0.001,v0,tf)
vtb1_1_mod(m,c,k,0.002,v0,tf)
vtb1_1_mod(m,c,k,0.005,v0,tf)

legend('x(0) = 0.001','x(0) = 0.002','x(0) = 0.005')