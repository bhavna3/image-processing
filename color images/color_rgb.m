clc;
clear all;
close all;

f=imread("coloredChips.png");
subplot(2,2,1);imshow(f)
title("Original Image");

r=size(f,1);
c=size(f,2);

R=zeros(r,c,3);
G=zeros(r,c,3);
B=zeros(r,c,3);

R(:,:,1)=f(:,:,1);
G(:,:,2)=f(:,:,2);
B(:,:,3)=f(:,:,3);

subplot(2,2,2);imshow(uint8(R))
title("Red Channel Image");

subplot(2,2,3);imshow(uint8(G))
title("Green Channel Image");

subplot(2,2,4);imshow(uint8(B))
title("Blue Channel Image");