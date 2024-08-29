clc;
clear all;
close all;

image = imread("trees.tif");

figure;
subplot(4,2,1); imshow(image);
title("Original Image");
subplot(4,2,2)
imhist(image);title("Histogram of original");

equalized = histeq(image);
subplot(4,2,3); imshow(equalized);
title("Equalized Image");
subplot(4,2,4);
imhist(equalized);title("Histogram of equalized");

complement = imcomplement(image);
subplot(4,2,5); imshow(complement);
title("Complement of Image");
subplot(4,2,6);
imhist(complement);title("Histogram of complement");

complement_equalized = histeq(complement);
subplot(4,2,7); imshow(complement_equalized);
title("Equalized Complement of Image");
subplot(4,2,8);
imhist(complement_equalized);title("Histogram of equalized compliment of image");
