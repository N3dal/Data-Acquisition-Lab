clear;
clc;

%% load the data from tg_and_ag.dat file;
data = load("to_and_ao.dat");

tg = data(1, :)
ag = data(2, :)

plot(tg, ag);
xlabel("Theoritcal Output");
ylabel("Actual Output");
title("Theoritcal Output and Actual Output");
