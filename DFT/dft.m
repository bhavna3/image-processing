clc;
close all;
clear all;

% Read an image
img = imread('car_1.jpg');

% Convert the image to grayscale if it is not already
if size(img, 3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img;n
end

% Display the original grayscale image
subplot(1,3,1);
imshow(grayImg);
title('Original Grayscale Image');

% Compute the 2D DFT of the image
dftImg = fft2(grayImg);

% Display the magnitude of the 2D DFT for visualization
subplot(1,3,2);
colormap("gray");
imshow(log(1 + abs(dftImg)), []);
title('Magnitude of 2D DFT');

% Shift the zero-frequency component to the center of the spectrum
dftShifted = fftshift(dftImg);
subplot(1,3,3);
imshow(log(1 + abs(dftShifted)), []);
title('Shifted DFT Magnitude');

% Compute the magnitude and phase of the DFT
magnitude = abs(dftShifted);
phase = angle(dftShifted);

figure;
% Display the magnitude spectrum (log scale for better visualization)
subplot(1,3,1);
imshow(log(1 + magnitude), []);
colormap(jet); 
colorbar;
title('Magnitude Spectrum of DFT');

% Display the phase spectrum
subplot(1,3,2);
imshow(phase, []);
colormap(jet);
colorbar;
title('Phase Spectrum of DFT');

% Compute the inverse DFT to reconstruct the image
idftImg = ifft2(dftImg);

% Display the reconstructed image (real part only, as the output can be complex)
subplot(1,3,3);
imshow(uint8(abs(idftImg)));
title('Reconstructed Image from DFT');
