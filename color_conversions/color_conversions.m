clc; 
clear all; 
close all;

i = imread("coloredChips.png");
gray = im2gray(i);

% Display original image
subplot(5, 2, 1);
imshow(i);
title('Original Image');

% Display grayscale image
subplot(5, 2, 3);
imshow(gray);
title('Grayscale Image');

% Convert rgb to HSV 
hsv = rgb2hsv(i); 
subplot(5, 2, 5);
imshow(hsv);
title('HSV');

% Convert HSV back to RGB
hsv2rgb = hsv2rgb(hsv);
subplot(5, 2, 6);
imshow(hsv2rgb);
title('HSV to RGB');

% Convert rgb to YCbCr
ycbcr = rgb2ycbcr(i); 
subplot(5, 2, 7);
imshow(ycbcr);
title('YCbCr');

% Convert YCbCr back to RGB
ycbcr2rgb = ycbcr2rgb(ycbcr);
subplot(5, 2, 8);
imshow(ycbcr2rgb);
title('YCbCr to RGB');

% Convert rgb to Lab
lab = rgb2lab(i);
subplot(5, 2, 9);
imshow(lab);
title('Lab');

% Convert Lab back to RGB
lab2rgb = lab2rgb(lab);
subplot(5, 2, 10);
imshow(lab2rgb);
title('Lab to RGB');
