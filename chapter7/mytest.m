figure;
subplot(1,2,1);
rgb = imread('plane.bmp');
imshow(rgb);title('rgb');
subplot(1,2,2);
hsi = rgb2hsi(rgb);
imshow(hsi);title('hsi');