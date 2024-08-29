clc;
close all;
clear all;
i=imread('pout.tif');
j=imcomplement(i);
subplot(2,2,1);
imshow(i)
title('original');
subplot(2,2,2);
imshow(j)
title('complement');
k=imadjust(i,[0,0.4],[0.5;1]); %adj intensity vals towards brighter side
subplot(2,2,3);
imshow(k)
title('intensity adj img1');
l=imadjust(i,[0.3,0.7],[]); %  adj intensity vals towards darker side
subplot(2,2,4);
imshow(l)
title('intensity adj img2');
