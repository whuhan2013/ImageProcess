I1 = imread('cell.tif');

fcoef = fft2(I1);
spectrum = fftshift(fcoef);
temp = log(1+abs(spectrum));   

subplot(2,2,1);
imshow(temp,[]);
title('FFT');
subplot(2,2,2);
imshow(I1);
title('Source');

I2 = imread('circuit.tif');
fcoef = fft2(I2);
spectrum = fftshift(fcoef);
temp = log(1+abs(spectrum));


subplot(2,2,3);
imshow(temp,[]);
title('FFT');
subplot(2,2,4);
imshow(I2);
title('source');