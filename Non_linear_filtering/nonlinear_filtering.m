clc;
clear all;
close all;

f=imread("greens.jpg");
subplot(3,3,1);imshow(f)
title("Original Image");

a=rgb2gray(f);
subplot(3,3,2);imshow(a)
title("gray Image");

b=imnoise(a,'salt & pepper',0.2);
subplot(3,3,3);
imshow(b)
title("salt&pepper density 0.2");

c=imnoise(a,'salt & pepper',0.5);
subplot(3,3,4);
imshow(c)
title("salt&pepper density 0.5");

d=medfilt2(b,[3,3]);
subplot(3,3,5);
imshow(d)
title("filter[3,3] for density 0.2");

e=medfilt2(c,[3,3]);
subplot(3,3,6);
imshow(e)
title("filter[3,3] for density 0.5");

f=medfilt2(c,[5,5]);
subplot(3,3,8);
imshow(f)
title("filter[5,5] for density 0.5");

g=medfilt2(c,[9,9]);
subplot(3,3,9);
imshow(g)
title("filter[9,9] for density 0.5");

h=medfilt2(b,[5,5]);
subplot(3,3,7);
imshow(h)
title("filter[5,5] for density 0.2");