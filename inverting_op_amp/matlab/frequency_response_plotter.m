%% this script used to draw the frequency response;

frequencies = [1, 100, 500, 1000, 100000, 500000, 1000000];
actual_gain = [14.8, 14.7, 14.7, 14.8, 2.75, 1.04, 0.16];


plot(actual_gain, frequencies);
xlabel("Frequency");
ylabel("Actual Gain");
title("Frequency Response");