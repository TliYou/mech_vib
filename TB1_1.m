%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp1 toolbox 1.1 %%

function TB1_1(v0)

m = 49.2*10^-3; % unit:kg
c = 0.11; % unit:kg/s
k = 857.8; % unit:N/m
x0 = 0.001; % unit:m
vtb1_1(m,c,k,x0,v0,3.5)
hold on