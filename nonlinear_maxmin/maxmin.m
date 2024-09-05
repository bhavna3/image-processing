clc;
clear;
close all;

a=imread("cameraman.tif");
subplot(3,3,1);imshow(a);
title("Original Image");

b=ordfilt2(a,1,ones(3,3));
subplot(3,3,2);imshow(b);
title("Minimum filter");

c=ordfilt2(a,9,ones(3,3));
subplot(3,3,3);imshow(c);
title("Maximum filter");

d=imnoise(a,'salt & pepper',0.2);
subplot(3,3,4);imshow(d);
title("Original with noise");

e=ordfilt2(d,1,ones(3,3));
subplot(3,3,5);imshow(e);
title("min filter with noise");

f=ordfilt2(d,9,ones(3,3));
subplot(3,3,6);imshow(f);
title("max filter with noise");

g=imread("cameraman.tif");
subplot(3,3,7);imshow(g);
title("Original Image");

h=ordfilt2(a,1,ones(5,5));
subplot(3,3,8);imshow(h);
title("Min filter 5x5");

i=ordfilt2(a,9,ones(5,5));
subplot(3,3,9);imshow(i);
title("Max filter 5x5");







