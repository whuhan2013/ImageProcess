I = imread('erode_dilate.bmp');    
se = strel('square',3);
Ib = imerode(I,se);
se = strel([0 1 0;1 1 1;0 1 0]);    
Ic = imerode(I,se);
se = strel('square',5);
Id = imerode(I,se);

figure;
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(Ib);
subplot(2,2,3);
imshow(Ic);
subplot(2,2,4);
imshow(Id);