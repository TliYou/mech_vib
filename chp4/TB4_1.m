%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 toolbox 4.1 %%

% [P,w,S]=vtb4_1(M,K)
m1 = 9; m2 = 1; k1 = 24; k2 = 3;
M = [m1 0 ; 0 m2]; K = [(k1+k2) -k2 ; -k2 k2];
[P,w,S]=vtb4_1(M,K)