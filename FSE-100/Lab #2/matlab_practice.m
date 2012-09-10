% Description: FSE 100 - Lab #2 - MATLAB Practice Script
% Author: Anthony Kosednar
% Date: 09/10/2012

% Part 0: Import Data from http://cm.asu.edu/weather/

% Our Data download: http://cm.asu.edu/csv/WS-Download-9102012-8130.csv

%{
    We pass the data to a php file to cleanup the data from the weather
    site for us. The PHP Script deletes all columns but 3 and 6. Please see
    the included script for more information. (Yes technically we were
    suppose to manually edit the data but it is more efficent to let a
    machine do it for us!)
%}

dataurl = 'http://cm.asu.edu/csv/WS-Download-9102012-8130.csv';
url = ['http://srvpanel.com/data-cleanup.php?data=',dataurl];
filename = 'rural_day.csv';
urlwrite(url,filename);
disp('* Solar Data Imported from ASU CM:')
data = importdata(filename)

% Part 1: mathematical computations

ComputationAnswer1 = (32/16)+4
ComputationAnswer2 = (2^4)-5
ComputationAnswer3 = 2+(exp(1)*2)
ComputationAnswer4 = sin(pi/4)-cos(pi/4)

% Part 2: vectors and matrices
rad = 5; %in is our unit
CircleArea = pi*(rad^2)
A = [1 5 -9 ];
B = [1 2 3 0 50];
C = [2 -5 pi];
C = C';
D = [5 9 14; 19 0 -10; 2*((2)^(1/2)) -4 11];
SecondElementinVectorA = A(2)
disp('* Answer for 3A-E:')
E = D(3,2)

% Part 3: import data and perform data analysis
disp('* Now we do some solar data analysis')
power = data(:,1);
irradiance = data(:,2);
avg_power = mean(power)
avg_irradiance = mean(irradiance)
max_power = max(power)
max_irradiance = max(irradiance)
insolation = sum(irradiance) %units: (W*h)/(m^2)
PeakSunHours = (insolation)/(1000)
disp('* Linear Correlation between Electric Power and Solar Irradiance:')
corr(power,irradiance)

%{
 If it is close to 1 then there is a strong positive correlation, 0 no correlation, and -1 a
 strong negative correlation.
%}

disp('* Since our data is close to 1, there is a strong correlation!!')

% Part 4: make 2D plots
y = power;
x = 0:23;
h = irradiance;
g = 0:23;
plot(x,y,'b-s',g,h,'y--d')
title('Solar Power and Irradiance over time')
xlabel('Hour of The Day')
ylabel('Amount of Energy')
legend('Solar Power (kWh) ','Solar Irradiance W/(m^2)')