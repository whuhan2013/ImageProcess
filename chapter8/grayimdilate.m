f = [0 1 2 3 4 5 4 3 2 1 0];
figure,h_f = plot(f);
seFlat = strel([1 1 1]);

fd1 = imdilate(f,seFlat);
hold on,h_fd1 = plot(fd1,'-ro');
axis([1 11 0 8]);
setHeight = strel([1 1 1],[1 1 1]);
fd2 = imdilate(f,setHeight);
hold on,h_fd2= plot(fd2,'-g*');
legend('原灰度1维函数f','使用平坦结构元素膨胀','使用高度为1有结构元素膨胀元素膨胀后');