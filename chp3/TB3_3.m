%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 toolbox 3.3 %%

% independant from vtoolbox (input data : period of piecewise function)
function TB3_3(T)
syms t
f1 = -(8/pi^2)*(cos(((2*pi)/T)*t));
f2 = -(8/pi^2)*((cos(((2*pi)/T)*t))+((1/9)*(cos(((6*pi)/T)*t))));
f3 = -(8/pi^2)*((cos(((2*pi)/T)*t))+((1/9)*(cos(((6*pi)/T)*t)))...
    +((1/25)*(cos(((10*pi)/T)*t))));

hold on

ezplot(f1)
ezplot(f2)
ezplot(f3)

title('Fourier triangular wave steps')
legend('step 1','step 2','step 3')