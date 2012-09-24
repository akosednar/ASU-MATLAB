% Description: FSE 100 - Lab #3 - Post Lab - Diode IV
% Author: Anthony Kosednar
% Date: 09/11/2012

% I-V Curve Diode
% Define Variables
v = [-5.0 -4.47 -3.99 -3.50 -3 -2.45 -2.02 -1.51 -1.04 -0.70 -0.15 0.15 0.70 1.04 1.51 2.02 2.45 3 3.50 3.99 4.47 5.0]
i = [0 0 0 0 0 0 0 0 0 0 0 0 0.13 0.46 0.86 1.31 1.7 2.19 2.64 3.08 3.52 4.01]
plot(v,i)
title('I-V Curve for a Diode');
xlabel('Voltage (volts)');
ylabel('Current (mAmps)');