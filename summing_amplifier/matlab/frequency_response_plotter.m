%% this script used to draw the frequency response;

frequencies = [10, 100, 1000, 100000, 1000000, 10000000];
actual_gain = [1.001, 0.9999, 0.9999, 0.6997, 0.07107, 0.00775];


plot(actual_gain, frequencies);
xlabel("Frequency");
ylabel("Actual Output");
title("Frequency Response");