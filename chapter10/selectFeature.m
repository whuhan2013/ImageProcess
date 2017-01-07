load fisheriris;
data = [meas(:,1),meas(:,2)];
figure;
scatter(data(1:50,1),data(1:50,2),'b+');
hold on,scatter(data(51:100,1),data(51:100,2),'r*');
hold on,scatter(data(101:150,1),data(101:150,2),'go');

data = [meas(:,1),meas(:,3)];
figure;
scatter(data(1:50,1),data(1:50,2),'b+');
hold on,scatter(data(51:100,1),data(51:100,2),'r*');
hold on,scatter(data(101:150,1),data(101:150,2),'go');