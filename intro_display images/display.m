clc;
clear all;
close all;

f=imread('moon.tif');
subplot(1,3,1);
imshow(f)
title('grayscale image');

l=imread('circles.png');
subplot(1,3,2);
imshow(l)
title('binary image');

h=imread('kobi.png');
subplot(1,3,3);
imshow(h)
title('color image');
