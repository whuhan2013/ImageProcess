f = [0 1 2 3 4 5 4 3 2 1 0];
figure,h_f = plot(f);
seFlat = strel([1 1 1]);

fe1 = imerode(f,seFlat);
hold on,h_fe1 = plot(fe1,'ro');
axis([1 11 0 8]);
seHeight = strel([1 1 1],[1 1 1]);

fe2 = imerode(f,seHeight);
hold on,h_fe2=plot(fe2,'-g*');
legend('原灰度1维函数f','使用平坦结构元素腐蚀','使用高度为1有结构元素膨胀元素腐蚀后');