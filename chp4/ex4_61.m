%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 4.61 %%
clear all, clc
syms t f
%% set Equations of Motion by matrices
M = [75 0 0 ; 0 100 0 ; 0 0 3000];
K = 12000*[2 -2 0 ; -2 6 -2 ; 0 -2 4];
x0 = [0 ; 0 ; 0];
xd0 = [0 ; 0 ; 1];
dr = 0.1;
Kh = sqrt(M^-1)*K*sqrt(M^-1);
[V,D] = eig(Kh);
va1 = D(1,1); va2 = D(2,2); va3 = D(3,3); %eigenvalues
fprintf('eigenvalues are %5.3f, %5.3f, %5.3f\n', va1, va2, va3)
W = [sqrt(va1) ; sqrt(va2) ; sqrt(va3)]; %natural freq
fprintf('natural freqencies are %5.3f, %5.3f, %5.3f\n', W(1), W(2), W(3))
Wd = sqrt(1-dr^2)*W; %damping natural freq
%% coordinate transformation
A = V'*Kh*V;
S = sqrt(M^-1)*V;
r0 = (S^-1)*x0;
rd0 = (S^-1)*xd0;
R = sym(zeros(size(V,1),1));
%% calculate phase & coefficient
pi = zeros(size(V,1),1);
d = zeros(size(V,1),1);
num = zeros(size(V,1),1);
den = zeros(size(V,1),1);
for i=1:size(V,1)
    num(i) = Wd(i)*r0(i);
    den(i) = (rd0(i)+dr*W(i)*r0(i));
    pi(i) = atan(num(i)/den(i));
    d(i) = sqrt((den(i)^2)+(num(i)^2))/Wd(i);
    R(i) = d(i)*exp(-dr*W(i)*t)*sin(Wd(i)*t+pi(i));
end
%% restoration of coordinate
x = S*R;
hold on
f = sym(zeros(size(V,1),1));
for i=1:size(V,1)
    ezplot(x(i))
    axis([0 6 -0.15 0.2])
    title('response w/o rigid body mode')
end