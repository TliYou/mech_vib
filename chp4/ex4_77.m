%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 4.77 %%
clear all, clc
syms t
%% set Equations of Motion by matrices
M = (10^3)*[0.8 0 0 ; 0 4 0 ; 0 0 2];
K = (10^4)*[30 -30 0 ; -30 38 -8 ; 0 -8 88];
F = [0 ; 0 ; 10*sin(t)];
dr = [0.1 0 0 ; 0 0.05 0 ; 0 0 0.01];
Kh = sqrt(M^-1)*K*sqrt(M^-1);
[V,D] = eig(Kh);
va1 = D(1,1); va2 = D(2,2); va3 = D(3,3); %eigenvalues
fprintf('eigenvalues are %5.3f, %5.3f, %5.3f\n', va1, va2, va3)
W = [sqrt(va1) ; sqrt(va2) ; sqrt(va3)];
fprintf('natural freqencies are %5.3f, %5.3f, %5.3f\n', W(1), W(2), W(3))
%% additional computation
MF = (-1)*V'*sqrt(M^-1)*F; %modal force vector
f = MF/sin(t);
up = 2*dr*W;
Wd = zeros(3,1);
A = zeros(3,1);
pi = zeros(3,1);
num = zeros(3,1);
den = zeros(3,1);
R = sym(zeros(3,1));
for i=1:3
    Wd(i) = W(i)*sqrt(1-dr(i)^2);
    num(i) = 2*dr(i,i)*W(i)*Wd(i);
    den(i) = (W(i)^2)-(Wd(i)^2);
    A(i) = f(i)/sqrt((den(i)^2)+(num(i)^2));
    pi(i) = atan(num(i)/den(i));
    R(i) = A(i)*exp(-dr(i,i)*W(i)*t)*sin(Wd(i)*t-pi(i));
end
x = sqrt(M^-1)*V*R;
