I = zeros(120,180);
I(11:80,16:75)=1;
I(56:105,86:135)=1;
I(26:55,141:170)=1;

se = zeros(58,58);
se(5:54,5:54)=1;

Ie1 = imerode(I,se);
Ic = 1 - I;
S2 = 1 - se;
Ie2 = imerode(Ic,S2);
Ihm = Ie1&Ie2;

figure;
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(Ie1);
subplot(2,2,3);
imshow(Ie2);
subplot(2,2,4);
imshow(Ihm);

