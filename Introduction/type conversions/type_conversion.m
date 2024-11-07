clc;
clear all;
close all;

f=imread('moon.tif');
subplot(3,3,1);
imshow(f)
title('grayscale image');
impixelinfo;
rgb=cat(3,f,f,f);
subplot(3,3,2);
imshow(rgb)
title('color image');
impixelinfo;

l=imread('circles.png');
subplot(3,3,4);
imshow(l)
title('binary image');
impixelinfo;


h=imread('kobi.png');
subplot(3,3,7);
imshow(h)
title('color image');
impixelinfo;
a=rgb2gray(h)
subplot(3,3,8);
imshow(a)
title('gray image');
impixelinfo;