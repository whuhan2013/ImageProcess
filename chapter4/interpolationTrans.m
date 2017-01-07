A = imread('rectangle.bmp');
B = imrotate(A,30,'nearest');
C = imrotate(A,30,'bilinear');
D = imrotate(A,30,'bicubic');

subplot(2,2,1),imshow(A);
title('原图像');
subplot(2,2,2),imshow(B);
title('最近邻插值');
subplot(2,2,3),imshow(C);
title('双线性插值');
subplot(2,2,4),imshow(D);
title('双三次插值');

