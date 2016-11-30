%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 toolbox 4.3 %%

% [x,v,t]=vtb4_2(M,K,x0,v0,tf,plotpar)
M = [9 0 ; 0 1]; K = [27 -3 ; -3 3]; v0 = [0 0]';
[x,v,t]=vtb4_2_mod(M,K,[1 0]',v0,10,1);
[x,v,t]=vtb4_2_mod(M,K,[1 1]',v0,10,1);
[x,v,t]=vtb4_2_mod(M,K,[0 1]',v0,10,1);
[x,v,t]=vtb4_2_mod(M,K,[1 -1]',v0,10,1);
[x,v,t]=vtb4_2_mod(M,K,[.1 .9]',v0,10,1);
[x,v,t]=vtb4_2_mod(M,K,[.2 .8]',v0,10,1);
legend('x(0) = [1 0]^{T}','x(0) = [1 1]^{T}','x(0) = [0 1]^{T}',...
    'x(0) = [1 -1]^{T}','x(0) = [0.1 0.9]^{T}','x(0) = [0.2 0.8]^{T}')
set(legend,'Position',[0.79 0.79 0.2 0.2]);