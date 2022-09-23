clear all;
clc;
set(0,'defaultfigurecolor','w');

d1 = 'ours.xlsx';
d2 = '2021dnn.xlsx';
d3 = '2019logistic.xlsx';
d4 = '2022wavelet.xlsx';
data1 = xlsread(d1, 1);
data2 = xlsread(d2, 1);
data3 = xlsread(d3, 1);
data4 = xlsread(d4, 1);

T = 0.035;
T_end1 = T * 802;
time1 = 0:T:T_end1;

T_end2 = T * 802;
time2 = 0:T:T_end2;

T_end3 = T * 658;
time3 = 0:T:T_end3;

T_end4 = T * 97;
time4 = 0:T:T_end4;




figure(1);
xlabel('Time(s)','FontSize',12); hold on;
ylabel('Pendulum angle(rad)','FontSize',12); hold on;
set(gca,'FontSize',12);
box on;
plot(time1, data1(1:803, 3), 'b', 'LineWidth', 2); hold on;
plot(time2, data2(1:803, 3), 'g', 'LineWidth', 2); hold on;
plot(time3, data3(1:659, 3), 'y', 'LineWidth', 2); hold on;
plot(time4, data4(1:98, 3), 'r', 'LineWidth', 2); hold on;
legend('The proposed method','Watermarking based on deep neural network [S1]','Encryption based on improved logistic map [S2]','Encryption based on ROI-mining network [S3]', 'Location','northeast');
axis([0 T_end1 -0.08 0.08]);
hold on;