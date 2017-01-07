I = imread('bacteria.BMP');
temp = I;
I = double(I);
w1 = [-1 0; 0 1];
w2 = [0 -1;1 0];

G1 = imfilter(I,w1,'corr','replicate');
G2 = imfilter(I,w2,'corr','replicate');
G = abs(G1)+abs(G2);
figure;
subplot(2,2,1);
imshow(temp),title('Ô­Í¼Ïñ');
subplot(2,2,2);
imshow(abs(G1),[]),title('w1ÂË²¨'); 
subplot(2,2,3);
imshow(abs(G2),[]),title('w2ÂË²¨'); 
subplot(2,2,4);
imshow(G,[]),title('RobertÌÝ¶È'); 