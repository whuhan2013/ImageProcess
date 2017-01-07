I = imread('baby_noise.bmp');
h = fspecial('average',3);
I3 = imfilter(I,h,'corr','replicate');
h = fspecial('average',5);
I5 = imfilter(I,h,'corr','replicate');
h = fspecial('average',7);
I7 = imfilter(I,h,'corr','replicate');
figure;
subplot(2,2,1);
imshow(I),title('ԭͼ');

subplot(2,2,2);
imshow(I3),title('3*3');
subplot(2,2,3);
imshow(I5),title('5*5');
subplot(2,2,4);
imshow(I7),title('7*7');