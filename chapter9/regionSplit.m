I1 = imread('rice.png');

S = qtdecomp(I1,0.2);
S2 = full(S);

figure;
subplot(1,2,1),imshow(I1);
subplot(1,2,2),imshow(S2);

ct = zeros(6,1);
for ii = 1:6
    [vals{ii},r,c]=qtgetblk(I1,S2,2^(ii-1));
    ct(ii) = size(vals(ii),3);
end