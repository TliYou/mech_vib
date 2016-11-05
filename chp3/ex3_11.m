%% based on txtbk [Engineering Vibration, 4th Ed, Inman], chp3 exercise 3.11 %%

syms t
f = t*(exp(1)^(-2*t));
ezplot(f,[0,5,0,0.2])
title('Response Plot')