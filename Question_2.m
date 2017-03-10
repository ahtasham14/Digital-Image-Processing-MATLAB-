close all
clear all
clc
raduis = 100;
no_point =1;
for angle=0.1:0.1:360
    X(no_point) = raduis*cos(angle);
    Y(no_point) = raduis*sin(angle);
    no_point = no_point + 1;
    plot (X,Y);
end
