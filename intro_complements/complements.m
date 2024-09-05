clc;
clear all;
close all;

f=imread('moon.tif');
subplot(3,2,1);
imshow(f)
title('grayscale image');
impixelinfo; % displays pixel information

f1=imcomplement(f);
subplot(3,2,2);
imshow(f1)
title('grayscale image complement');
impixelinfo;

l=imread('circles.png');
subplot(3,2,3);
imshow(l)
title('binary image');
impixelinfo;

l1=imcomplement(l);
subplot(3,2,4);
imshow(l1)
title('binary image complement');
impixelinfo;

h=imread('kobi.png');
subplot(3,2,5);
imshow(h)
title('color image');
impixelinfo;

h1=imcomplement(h);
subplot(3,2,6);
imshow(h1)
title('color image complement');
impixelinfo;