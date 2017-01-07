I = imread('lena.bmp');
seHeight=strel(ones(3,3),ones(3,3));
Idi1= imdilate(I,seHeight);
Iero = imerode(I,seHeight);
subplot(1,3,1),imshow(I);
subplot(1,3,2),imshow(Idi1);
subplot(1,3,3),imshow(Iero);
