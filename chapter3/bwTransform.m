I = imread('rice.png');
thresh = graythresh(I);
bw1=im2bw(I,thresh);
bw2=im2bw(I,130/255);
subplot(1,3,1);
imshow(I);
title('原图像');

subplot(1,3,2);
imshow(bw1);
title('自动选择阀值');   

subplot(1,3,3);
imshow(bw2);
title('阀值130'); 