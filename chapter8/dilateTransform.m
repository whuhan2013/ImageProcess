I = imread('starcraft.bmp');
Ie1 = imerode(I,[1 1 1;1 1 1;1 1 1]);     
Ie2 = imerode(Ie1,[0 1 0;1 1 1;0 1 0]); 
Id1 = imdilate(Ie2,[1 1 1;1 1 1;1 1 1]);
Id2 = imdilate(Id1,[0 1 0;1 1 1;0 1 0]);

figure;
subplot(2,2,1);
imshow(Ie1);
subplot(2,2,2);
imshow(Ie2);
subplot(2,2,3);
imshow(Id1);
subplot(2,2,4);
imshow(Id2);