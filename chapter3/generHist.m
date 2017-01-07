I = imread('pout.tif');
figure;
imshow(I); title('Souce');
figure;
imhist(I);title('Graph');
figure;
imhist(I,64);