%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 3.4 %%

syms t
f = (3/4)*((exp(1))^-t)*(sin((sqrt(2)*t)+atan(sqrt(2)/4)))...
    +(sqrt(2)/4)*(sin(t-(pi/4)));
ezplot(f)
