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
data = importdata(filename)
