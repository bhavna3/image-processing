clc;
clear; 
close all;

img = imread('eight.tif');
subplot(3,2,1);
imshow(img);
title("original Image");
SE=strel("disk",5);
dilImg=imdilate(img,SE);
subplot(3,2,2);
imshow(dilImg);
title("dialated Image");
eroImg=imerode(img,SE);
subplot(3,2,3);
imshow(eroImg);
title("eroded Image")
closeImg=imclose(img,SE);
subplot(3,2,4);
imshow(closeImg);
title("closed Image");
openImg=imopen(img,SE);
subplot(3,2,5);
imshow(openImg);
title("opened Image");

