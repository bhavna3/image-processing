clc; 
clear all; 
close all;

% Read an image
i = imread('greens.jpg');

subplot(4, 3, 1);
imshow(i);
title('Original Image');

% Convert the image to grayscale if it is not already
if size(i, 3) == 3
    grayImg = rgb2gray(i);
else
    grayImg = i;
end
% Display the original grayscale image
subplot(4, 3, 2);
imshow(grayImg);
title('Original Grayscale Image');

% Perform 2D DWT using Haar wavelet (Level 1)
[LL, LH, HL, HH] = dwt2(double(grayImg), 'haar');
% Display Level 1 coefficients
subplot(4, 3, 3);
imshow(uint8(LL));
title('Approximation Coefficients (LL)');
subplot(4, 3, 4);
imshow(uint8(LH+128)); % Directly display without modification
title('Horizontal Detail Coefficients (LH)');
subplot(4, 3, 5);
imshow(uint8(HL+128)); % Directly display without modification
title('Vertical Detail Coefficients (HL)');
subplot(4, 3, 6);
imshow(uint8(HH+128)); % Directly display without modification
title('Diagonal Detail Coefficients (HH)');

% Perform 2D DWT on the approximation coefficients (Level 2)
[LLL, LLH, LHL, LHH] = dwt2(LL, 'haar');
% Display Level 2 coefficients
subplot(4, 3, 7);
imshow(uint8(LLL));
title('Level 2 Approximation Coefficients (LLL)');
subplot(4, 3, 8);
imshow(uint8(LLH+128)); % Directly display without modification
title('Level 2 Horizontal Coefficients (LLH)');
subplot(4, 3, 9);
imshow(uint8(LHL+128)); % Directly display without modification
title('Level 2 Vertical Coefficients (LHL)');
subplot(4, 3, 10);
imshow(uint8(LHH+128)); % Directly display without modification
title('Level 2 Diagonal Coefficients (LHH)');
% Reconstruct the image from the Level 1 DWT coefficients
reconstructedImg = idwt2(LL, LH, HL, HH, 'haar');
subplot(4, 3, 11);
imshow(uint8(reconstructedImg));
title('Reconstructed Image from Level 1 DWT');
% Reconstruct the image from the Level 2 DWT coefficients
reconstructedImgLevel2 = idwt2(LLL, LLH, LHL, LHH, 'haar');
subplot(4, 3, 12);
imshow(uint8(reconstructedImgLevel2));
title('Reconstructed Image from Level 2 DWT');