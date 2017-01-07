I = imread('pout.tif');

subplot(1,3,1);
imhist(imadjust(I,[],[],0.75));
title('Gamma 0.75');

subplot(1,3,2);
imhist(imadjust(I,[],[],1));
title('Gamma 1');

subplot(1,3,3);
imhist(imadjust(I,[],[],1.5));
title('Gamma 1.5');