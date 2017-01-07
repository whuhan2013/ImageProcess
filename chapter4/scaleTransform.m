A = imread('lena.bmp');
B = imresize(A,1.2,'nearest');

figure,imshow(A);title('Ô­Í¼Ïñ');   
figure,imshow(B);title('Í¼ÏñËõ·Å');