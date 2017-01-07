Iin = imread('lena2.bmp');
Ibase = imread('lena.bmp');

figure;
subplot(1,2,1),imshow(Iin);
subplot(1,2,2),imshow(Ibase);
[inputpoints,basepoints]=cpselect(Iin);

tform = cp2tform(movingPoints,fixedPoints,'affine');