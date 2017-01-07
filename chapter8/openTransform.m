I = imread('erode_dilate.bmp');
Io = imopen(I,ones(6,6));
figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(Io);