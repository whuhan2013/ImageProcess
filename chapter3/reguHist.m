I = imread('pout.tif');
figure;
[M,N]=size(I);
[counts,x]=imhist(I,32);
counts= counts / M/N;
stem(x,counts);