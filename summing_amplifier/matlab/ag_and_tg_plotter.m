clear;
clc;

%% load the data from tg_and_ag.dat file;
data = load("tg_and_ag.dat");

tg = data(1, :)
ag = data(2, :)


xlabel("Theoritcal Gain");
ylabel("Actual Gain");
title("Theoritcal Gain and Actual Gain");
plot(tg, ag);