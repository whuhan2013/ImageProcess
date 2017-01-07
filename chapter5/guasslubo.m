I = imread('baby_noise.bmp');
h3_5 = fspecial('gaussian',3,0.5);
I3_5 = imfilter(I,h3_5);

h3_8 = fspecial('gaussian',3,0.8);
I3_8 = imfilter(I,h3_8);
h3_18 = fspecial('gaussian',3,1.8);
I3_18 = imfilter(I,h3_18);

h5_8 = fspecial('gaussian',5,0.8);
I5_8 = imfilter(I,h5_8);

h7_12 = fspecial('gaussian',7,1.2);
I7_12 = imfilter(I,h7_12);

figure;
subplot(2,3,1);
imshow(I);
subplot(2,3,2);
imshow(I3_5);
subplot(2,3,3);
imshow(I3_8);
subplot(2,3,4);
imshow(I3_18);
subplot(2,3,5);
imshow(I5_8);
subplot(2,3,6);
imshow(I7_12);