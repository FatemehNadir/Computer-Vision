clc;close all; clear;
I=imread('.\Mars_Moon.tif');
A=im2double(I);
subplot(1,3,1);
imshow(I)
title('original', 'FontSize', 10);


%g=im2uint8(mat2gray(log(1+double(I))));
h=My_Histogram(I);

Result=(double(255/log(256)))*log(double(I+1));
J=uint8(Result);
K=imadjust(J,[0 1],[1 0]);
subplot(1,3,2);
imshow(J)
title('Edit', 'FontSize', 10);
subplot(1,3,3);
imshow(K)
title('Edit', 'FontSize', 10);





