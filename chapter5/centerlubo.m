I = imread('lena_salt.bmp');
J = imnoise(I,'salt & pepper');
w = [1,2,1;2,4,2;1,2,1]/16;
J1 = imfilter(J,w,'corr','replicate');

w = [1,1,1;1,1,1;1,1,1]/9;
J2 = imfilter(J,w,'corr','replicate');

J3 = medfilt2(J,[3,3]);
figure;
subplot(2,3,1);
imshow(I),title('原图像');
subplot(2,3,2);
imshow(J),title('椒盐噪声');  
subplot(2,3,4);
imshow(J1),title('高斯平滑');
subplot(2,3,5);
imshow(J2),title('平均平滑');
subplot(2,3,6);
imshow(J3),title('中值平滑');