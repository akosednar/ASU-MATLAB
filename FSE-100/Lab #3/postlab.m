% Description: FSE 100 - Lab #3 - Post Lab - Resistor IV
% Author: Anthony Kosednar
% Date: 09/11/2012

% I-V Curve Resistor (R=1.1K Ohm)
% Define Variables
V = [0.102 1.516 2.138 3.101 4.21 5.15];
I = [0.14 1.39 1.97 2.85 3.87 4.73];
plot(V,I)
title('I-V Curve for a Resistor (R=1.1K Ohm)')
xlabel('Voltage (volts)')
ylabel('Current (mAmps)')