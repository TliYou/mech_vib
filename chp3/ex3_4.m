%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 3.4 %%

syms A pha t
f1 = (3/4)*((exp(1))^-t)*(sin((sqrt(2)*t)+atan(sqrt(2)/4)))...
    +(sqrt(2)/4)*(sin(t-(pi/4)));
f1d = diff(f1,t); %1st differentiantion
tmp = subs(f1,t,pi); %substitute pi into eqtn
tmpd = subs(f1d,t,pi);

% solving simultaneous eqtn
f2t = (A*(exp(-t))*(sin(sqrt(2)*t+pha)))...
    +((sqrt(2)/4)*(sin(t-(pi/4))))...
    -((1/sqrt(2))*(exp(pi-t))*(sin(sqrt(2)*(t-pi))));
f2td = diff(f2t,t);

f2ts = subs(f2t,t,pi);
f2tsd = subs(f2td,t,pi);
%build simultaneous eqtn
eqtn1 = f2ts == tmp;
eqtn2 = f2tsd == tmpd;
S = solve(eqtn1,eqtn2,A,pha);
A = double(S.A);
pha = double(S.pha);
% selecting solution
A = A(2);
pha = pha(2);
f2 = (A*(exp(-t))*(sin(sqrt(2)*t+pha)))...
    +((sqrt(2)/4)*(sin(t-(pi/4))))...
    -((1/sqrt(2))*(exp(pi-t))*(sin(sqrt(2)*(t-pi))));

hold on
ezplot(f1,[0,pi])
ezplot(f2,[pi,15])
axis([0 15 -1 1])
title('Response Plot')
xlabel('time (s)')
ylabel('x(t)')
legend('0 < t < \pi','t > \pi')
