%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.2 %%

function TB1_2(x0)

% initial condition setting

m = 49.2*10^-3; % unit:kg
c = 0.11; % unit:kg/s
k = 857.8; % unit:N/m
% x0 is input variable
v0 = 0; % unit:m/s
tf = 3.5;

vtb1_1(m,c,k,x0,v0,tf)

legend('x(0) = 0.001','x(0) = 0.002','x(0) = 0.005')