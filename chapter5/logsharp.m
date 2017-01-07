I = imread('baby.bmp');
Id = double(I);
h_lap = [ -1 -1 -1;-1 8 -1;-1 -1 -1];
I_lap = imfilter(Id,h_lap,'corr','replicate');

h_log = fspecial('log',5,0.5);
I_log = imfilter(Id,h_log,'corr','replicate');
h_log2 = fspecial('log',5,2);
I_log2 = imfilter(Id,h_log2,'corr','replicate');

figure;
subplot(2,2,1);
imshow(I),title('ԭͼ');
subplot(2,2,2);
imshow(uint8(abs(I_lap)),[]),title('laplacian');

subplot(2,2,3);
imshow(uint8(abs(I_log)),[]),title('LoG');
subplot(2,2,4);
imshow(uint8(abs(I_log2)),[]),title('LoG2');