clc; clear; close all;

% Step 1: Load the image
i = imread("coins.png");

% Step 2: Convert to grayscale if needed
if size(i, 3) == 3
    grayImage = rgb2gray(i);
else
    grayImage = i;
end

% Step 3: Compute the gradient of the grayscale image
gradientImage = imgradient(grayImage);

% Step 4: Binarize the gradient image
binImage = imbinarize(grayImage,'adaptive','Sensitivity',0.4);

% Step 5: Morphological opening to remove small objects
binImage = imopen(binImage, strel("disk", 2));

% Step 7: Compute the distance transform
distance = bwdist(~binImage);
distance = -distance; % Invert the distance transform
distance(~binImage) = -Inf; % Set background to -Inf

% Step 8: Perform watershed segmentation
L = watershed(distance);

% Step 9: Create a labeled image for visualization
% Set watershed lines to 0 in the labeled image


% Step 10: Create an RGB representation of the segmented image
segmentedImg = label2rgb(L, 'jet', 'w', 'shuffle');

% Step 11: Display the results
imshowpair(binImage,segmentedImg,'montage');
title('Original Image and watershed Segmentation')


