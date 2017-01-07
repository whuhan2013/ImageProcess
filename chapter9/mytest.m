f = imread('coins.png');
[J] = regionGrow(f);
imshow(J);
