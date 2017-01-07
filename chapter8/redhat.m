I = imread('rice.png');
subplot(2,4,1),imshow(I,[]);
thresh = graythresh(I);
Ibw = im2bw(I,thresh);
subplot(2,4,2),imshow(Ibw,[]);
subplot(2,4,3),surf(double(I(1:8:end,1:8:end))),zlim([0 255]),colormap;

bg = imopen(I,strel('disk',15));
subplot(2,4,4),surf(double(bg(1:8:end,1:8:end))),zlim([0 255]),colormap;

Itophat = imsubtract(I,bg);
subplot(2,4,5),imshow(Itophat);
subplot(2,4,6),surf(double(Itophat(1:8:end,1:8:end))),zlim([0 255]);

I2 = imadjust(Itophat);
subplot(2,4,7),imshow(I2);
thresh2 = graythresh(I2);
Ibw2 = im2bw(I2,thresh2);
subplot(2,4,8),imshow(Ibw2);
