I = imread('bw_mouth.bmp');
I1 = bwlabel(I);
D = regionprops(I1,'area','centroid');
D.Area
