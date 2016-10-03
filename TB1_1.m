%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.1 %%

% initial condition setting

m = 49.2*10^-3; % unit:kg
c = 0.11; % unit:kg/s
k = 857.8; % unit:N/m
x0 = 0.001; % unit:m
% v0 is input variable
tf = 5;

vtb1_1_mod(m,c,k,x0,0,tf)
vtb1_1_mod(m,c,k,x0,0.1,tf)
vtb1_1_mod(m,c,k,x0,1,tf)
vtb1_1_mod(m,c,k,x0,2,tf)

legend('v(0) = 0','v(0) = 0.1','v(0) = 1','v(0) = 2')