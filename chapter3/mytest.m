I = imread('coins.png');
J1 = imgrayscaling(I,[0.3,0.75],[0.15,0.85]);
figure,imshow(J1,[]);
J2 = imgrayscaling(I,[0.15,0.85],[0.3,0.7]);
figure,imshow(J2,[]);