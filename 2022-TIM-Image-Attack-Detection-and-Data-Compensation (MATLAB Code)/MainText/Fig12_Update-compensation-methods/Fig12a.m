close all;
set(0,'defaultfigurecolor','w');
num = 500;
begin_point = 1;
end_point = begin_point + num;
T = 0.035;
time = T * (end_point - begin_point);
x = 0:T:time;

test = 'PredictCompare_tauTo4.xlsx';
data1 = xlsread(test,9);
data2 = xlsread(test,10);
data3 = xlsread(test,11);
data4 = xlsread(test,12);

begin_point4 = 1;
end_point4 = 350;
for i = begin_point4:end_point4
    if (data4(i, 5) > 0.2 || data4(i, 5) < -0.2)
        break
    end
end
end_point4 = i;
time4 = T * (end_point4 - begin_point4);
x4 = 0:T:time4;

y1 = data1(begin_point:end_point, 5);
y2 = data2(begin_point:end_point, 5);
y3 = data3(begin_point:end_point, 5);
y4 = data4(begin_point4:end_point4, 5);

test0 = 'UpdateCompare_tauTo4.xlsx';
% Single-update
data01 = xlsread(test0,3);
data02 = xlsread(test0,4);
data03 = xlsread(test0,5);
data04 = xlsread(test0,6);
data05 = xlsread(test0,7);

begin_point05 = 1;
end_point05 = 375;
for i = begin_point05:end_point05
    if (data05(i, 6) > 0.2 || data05(i, 6) < -0.2)
        break
    end
end
end_point05 = i;
time05 = T * (end_point05 - begin_point05);
x05 = 0:T:time05;

y01 = data01(begin_point:end_point, 6);
y02 = data02(begin_point:end_point, 6);
y03 = data03(begin_point:end_point, 6);
y04 = data04(begin_point:end_point, 6);
y05 = data05(begin_point05:end_point05, 6);


% Multi-update
data11 = xlsread(test0,9);
data12 = xlsread(test0,10);
data13 = xlsread(test0,11);
data14 = xlsread(test0,12);
data15 = xlsread(test0,13);
data16 = xlsread(test0,14);

begin_point16 = 1;
end_point16 = 476;
for i = begin_point16:end_point16
    if (data16(i, 6) > 0.2 || data16(i, 6) < -0.2)
        break
    end
end
end_point16 = i;
time16 = T * (end_point16 - begin_point16);
x16 = 0:T:time16;

y11 = data11(begin_point:end_point, 6);
y12 = data12(begin_point:end_point, 6);
y13 = data13(begin_point:end_point, 6);
y14 = data14(begin_point:end_point, 6);
y15 = data15(begin_point:end_point, 6);
y16 = data16(begin_point16:end_point16, 6);
% 
% begin_point11 = 1520;
% end_point11 = begin_point11 + num;
% y11 = data11(begin_point11:end_point11, 6);
% y12 = data12(begin_point:end_point, 6);
% 
% begin_point13 = 1110;
% end_point13 = begin_point13 + num;
% y13 = data13(begin_point13:end_point13, 6);
% 
% begin_point14 = 1;
% end_point14 = begin_point14 + num;
% y14 = data14(begin_point14:end_point14, 6);
% 
% begin_point15 = 1;
% end_point15 = begin_point15 + num;
% y15 = data15(begin_point15:end_point15, 6);
% 
% % Ê§ÎÈ
% begin_point16 = 700;
% end_point16 = 1176;
% for i = begin_point16:end_point16
%     if (data16(i, 6) > 0.2 || data16(i, 6) < -0.2)
%         break
%     end
% end
% end_point16 = i;
% time16 = T * (end_point16 - begin_point16);
% x16 = 0:T:time16;
% y16 = data16(begin_point16:end_point16, 6);


figure(11);
title('\tau = 4 - Single-update', 'FontSize', 12);
xlabel('Time(s)', 'FontSize', 10);
ylabel('(rad)', 'FontSize', 10);
box on;
p1 = plot(x, y01, 'c-', x, y02, 'm-', x, y03, 'g-', 'LineWidth', 2); hold on;
p2 = plot(x, y04, 'b-', x05, y05, 'r-', 'LineWidth', 2); hold on;

l1 = legend(p1, '\rho = 15%', '\rho = 20%', '\rho = 25%', 'Location', 'northwest');
axis([0 time -0.2 0.2]);
axesNew = axes('position',get(gca,'position'), 'visible', 'off');
legend(axesNew, p2, '\rho = 30%', '\rho = 35%', 'Location', 'northeast');
hold on;