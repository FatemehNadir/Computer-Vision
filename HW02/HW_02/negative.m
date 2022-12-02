clc;close all; clear;

I=imread('C:\Users\Idanrf\Documents\MATLAB\HW02\Mars_Moon.tif');
h=My_Histogram(I);

for i=1:256
    z=0;
end

plot(h);