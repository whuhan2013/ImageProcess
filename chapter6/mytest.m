ff = imgaussfbrf(I,50,5);
figure(1);
subplot(2,2,1);
imshow(ff,[]);

out = imfreqfilt(I,ff);
temp = fft2(out);
temp = fftshift(temp);
temp = log(1+abs(temp));
subplot(2,2,2);
imshow(temp,[]);

subplot(2,2,3);
imshow(I);
title('Source');

subplot(2,2,4);
imshow(out);
title('Gauss Filter');