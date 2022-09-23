close all;
set(0,'defaultfigurecolor','w');
num = 500;
begin_point = 1;
end_point = begin_point + num;
T = 0.035;
time = T * (end_point - begin_point);
x = 0:T:time;

test = 'UpdateCompare_tauTo4.xlsx';
data1 = xlsread(test, 9);
y1 = data1(begin_point:end_point, 7);

testup = 'Compare_Diff_tau.xlsx';
data2 = xlsread(testup, 3);
y2 = data2(begin_point:end_point, 7);

data3 = xlsread(testup, 5);
y3 = data3(begin_point:end_point, 7);

data4 = xlsread(testup, 7);
y4 = data4(begin_point:end_point, 7);

data5 = xlsread(testup, 9);
y5 = data5(begin_point:end_point, 7);

data6 = xlsread(testup,11);
begin_point6 = 1;
end_point6 = 81;
y6 = data6(begin_point6:end_point6, 7);
time6 = T * (end_point6 - begin_point6);
x6 = 0:T:time6;

figure(1);
title('\rho = 15% - different \tau', 'FontSize',12);
xlabel('Time(s)', 'FontSize', 10);
ylabel('(rad)', 'FontSize', 10);
box on;
p3 = plot(x, y1, 'c-', x, y2, 'm-', x, y3, 'g-', 'LineWidth', 2); hold on;
p4 = plot(x, y4, 'k-', x, y5, 'r-', x6, y6, 'b-', 'LineWidth', 2); hold on;

l2 = legend(p3, '\tau = 4', '\tau = 5', '\tau = 6', 'Location', 'best');
axis([0 time -0.2 0.2]);
axesNew = axes('position',get(gca,'position'), 'visible', 'off');
legend(axesNew, p4, '\tau = 7', '\tau = 8', '\tau = 9', 'Location', 'best');
set(gca,'FontSize',12);
hold on;