I = imread('bw_bacteria.bmp');
[L,num]=bwlabel(I,8);
Idil = imdilate(I,ones(3,3));
[L,num] = bwlabel(Idil,8);

figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(Idil);