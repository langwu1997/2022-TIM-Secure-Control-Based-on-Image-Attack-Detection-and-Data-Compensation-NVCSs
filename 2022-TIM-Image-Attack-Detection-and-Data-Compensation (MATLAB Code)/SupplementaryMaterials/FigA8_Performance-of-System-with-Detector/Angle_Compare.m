clear all;
clc;
set(0,'defaultfigurecolor','w');

d = 'Angle_Compare.xlsx';
data1 = xlsread(d, 1);
data2 = xlsread(d, 2);
data3 = xlsread(d, 3);


T = 0.035;
T_end = T * 500;
time = 0:T:T_end; 

figure(1);
xlabel('Time(s)','FontSize',12); hold on;
ylabel('(rad)','FontSize',12); hold on;
set(gca,'FontSize',12);
box on;
plot(time, data1(1:501, 3), 'b', time, data2(1:501, 3), 'r', 'LineWidth', 2); hold on;
legend('Original system','System with encryption method', 'Location','northeast');
axis([0 T_end -0.08 0.08]);
hold on;

figure(2);
xlabel('Time(s)','FontSize',12); hold on;
ylabel('(rad)','FontSize',12); hold on;
set(gca,'FontSize',12);
box on;
plot(time, data1(1:501, 3), 'b', time, data3(1:501, 3), 'r', 'LineWidth', 2); hold on;
legend('Original system','System with detector', 'Location','northeast');
axis([0 T_end -0.08 0.08]);
hold on;