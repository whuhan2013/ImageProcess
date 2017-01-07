I = imread('patterns.bmp');
I1 = imread('pat1.bmp');
I2 = imread('pat2.bmp');
J1 = imcorr(I,I1);
max(J1(:));
J2 = imcorr(I,I2);
max(J2(:));