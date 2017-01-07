I = imread('pout.tif');
I = im2double(I);

I1 = 2*I - 55/255;
subplot(4,4,1);
imshow(I1);
subplot(4,4,2);
imhist(I1);
subplot(4,4,3);
imshow(histeq(I1));
subplot(4,4,4);
imhist(histeq(I1));

I2 = 0.5*I + 55/255;
subplot(4,4,5);
imshow(I2);
subplot(4,4,6);
imhist(I2);
subplot(4,4,7);
imshow(histeq(I2));
subplot(4,4,8);
imhist(histeq(I2));

I3 = I + 55/255;
subplot(4,4,9);
imshow(I3);
subplot(4,4,10);
imhist(I3);
subplot(4,4,11);
imshow(histeq(I3));
subplot(4,4,12);
imhist(histeq(I3));

I4 = I - 55/255;
subplot(4,4,13);
imshow(I4);
subplot(4,4,14);
imhist(I4);
subplot(4,4,15);
imshow(histeq(I4));
subplot(4,4,16);
imhist(histeq(I4));

