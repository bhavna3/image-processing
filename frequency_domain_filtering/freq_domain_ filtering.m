clc;
clear all;
close all;
img=imread("cameraman.tif");
if size(img,3)==3
    grayimg=rgb2gray(img);
else
    grayimg=img;
end      
subplot(3,5,1);
imshow(grayimg);
title('original grayscale image');

dftimg=fft2(grayimg);
subplot(3,5,2);
imshow(dftimg);
title('2D DFT of the image');

dftshifted=fftshift(dftimg);
subplot(3,5,3);
imshow(dftshifted);
title('DFT shifted of the image');

[m,n]=size(grayimg);
[U,V]=meshgrid(1:n,1:m);

D0=30;
D=sqrt((U-n/2).^2+(V-m/2).^2);
lowPassFilter=double(D <=D0);
filteredDft=dftshifted .* lowPassFilter;
subplot(3,5,4);
imshow(filteredDft);
title('filtered DFT of the image');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 5);
imshow(filteredImg);
title('Filtered Image (Low-Pass)');

D0=60;
D=sqrt((U-n/2).^2+(V-m/2).^2);
lowPassFilter=double(D <=D0);
filteredDft=dftshifted.*lowPassFilter;
subplot(3,5,6);
imshow(filteredDft);
title('filtered DFT of the image2');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 7);
imshow(filteredImg);
title('Filtered Image2 (Low-Pass)');

D0=90;
D = sqrt((U - n/2).^2 + (V - m/2).^2); % Calculate distance
lowPassFilter = double(D <= D0);       
filteredDft = dftshifted .* lowPassFilter;
subplot(3,5,8);
imshow(filteredDft);
title('filtered DFT of the image3');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 9);
imshow(filteredImg);
title('Filtered Image3 (low-Pass)');





D0=30;
D = sqrt((U - n/2).^2 + (V - m/2).^2); % Calculate distance
highPassFilter = double(D > D0);       % Create a high-pass filter
filteredDft = dftshifted .* highPassFilter; % Apply high-pass filter
subplot(3, 5, 10);
imshow(filteredDft);
title('filtered DFT of the image');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 11);
imshow(filteredImg);
title('Filtered Image (High-Pass)');


D0=60;
D = sqrt((U - n/2).^2 + (V - m/2).^2); % Calculate distance
highPassFilter = double(D > D0);       % Create a high-pass filter
filteredDft = dftshifted .* highPassFilter;
subplot(3,5,12);% Apply high-pass filter
imshow(filteredDft);
title('filtered DFT of the image2');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 13);
imshow(filteredImg);
title('Filtered Image2 (High-Pass)');


D0=90;
D = sqrt((U - n/2).^2 + (V - m/2).^2); % Calculate distance
highPassFilter = double(D > D0);       % Create a high-pass filter
filteredDft = dftshifted .* highPassFilter;
subplot(3,5,14);% Apply high-pass filter
imshow(filteredDft);
title('filtered DFT of the image3');

filteredImg = ifft2(filteredDft);
filteredImg = abs(filteredImg); % Take the absolute value
filteredImg = mat2gray(filteredImg); % Normalize to [0, 1]
filteredImg = uint8(filteredImg * 255); % Scale to [0, 255]
subplot(3, 5, 15);
imshow(filteredImg);
title('Filtered Image3 (High-Pass)');

