clear;
clc;

% % %% define the input arrays;
% vin1 = repmat(1, 8, 1);
% vin2 = repmat(2, 8, 1);
% vin3 = repmat(3, 8, 1);
% 
% % gain = [1, 1.5, 2, 2.5, 3, 4, 5, 6]
% 
% data = load("output.dat");
% 
% vo1 = data(1, :);
% vo2 = data(2, :);
% vo3 = data(3, :);



vin = -20:0.01:20;
vout1 = arrayfun(@(input_)transfer_function(input_+1, input_ -2, 1, 11.15), vin);
vout2 = arrayfun(@(input_)transfer_function(input_+1, input_ -2, 2, 11.15), vin);
vout3 = arrayfun(@(input_)transfer_function(input_+1, input_ -2, 3, 11.15), vin);

plot(vin, vout1, vin, vout2, vin, vout3);
xlabel("Input Voltage (V)");
ylabel("Output Voltage (V)");
title("Input and Output Voltages");

lgd = legend("Output=1", "Output=2", "Output=3")
lgd.Location = "northwest";
grid("on");
% set the axis limits;
axis([-15, 15, -15, 15])

function out = transfer_function(input1, input2, gain, saturation)
%     gain = 3;
%     saturation = 11.115;
    
    output_voltage = (input1 + input2) * gain;
    
    if gt(output_voltage, saturation)
        output_voltage = saturation;
    elseif lt(output_voltage, -1 * saturation)
        output_voltage = -1 * saturation;
    end
    
    out = output_voltage;

end