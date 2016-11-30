%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 4.49 %%
clear all, clc
%% set Equations of Motion by matrices
M = [1 0 0 ; 0 4 0 ; 0 0 1];
K = [3 -3 0 ; -3 6 -3 ; 0 -3 3];
Kh = sqrt(M^-1)*K*sqrt(M^-1);
[V,D] = eig(Kh);
va1 = D(1,1); va2 = D(2,2); va3 = D(3,3); %eigenvalues
fprintf('eigenvalues are %5.3f, %5.3f, %5.3f\n', va1, va2, va3)
W = [sqrt(va1) ; sqrt(va2) ; sqrt(va3)];
fprintf('natural freqencies are %5.3f, %5.3f, %5.3f\n', W(1), W(2), W(3))
