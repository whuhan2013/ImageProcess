I = imread('head_portrait.bmp');
se = strel('square',3);
Ie = imerode(I,se);
Iout = I - Ie;
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(Iout);