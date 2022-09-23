close all;
set(0,'defaultfigurecolor','w');
num = 500;
begin_point = 1;
end_point = begin_point + num;
T = 0.03;
time = T * (end_point - begin_point);
x = 0:T:time;
test = 'PredictCompare_tauTo4.xlsx';

% Single-step
data1 = xlsread(test);
data2 = xlsread(test,2);
data3 = xlsread(test,3);
data4 = xlsread(test,4);
data5 = xlsread(test,5);
data6 = xlsread(test,6);

y1 = data1(begin_point:end_point, 5);
y2 = data2(begin_point:end_point, 5);
y3 = data3(begin_point:end_point, 5);

begin_point4 = 1;
end_point4 = 390;
for i = begin_point4:end_point4
    if (data4(i, 5) > 0.2 || data4(i, 5) < -0.2)
        break
    end
end
end_point4 = i;
time4 = T * (end_point4 - begin_point4);
x4 = 0:T:time4;
y4 = data4(begin_point4:end_point4, 5);

begin_point5 = 1;
end_point5 = 400;
for i = begin_point5:end_point5
    if (data5(i, 5) > 0.2 || data5(i, 5) < -0.2)
        break
    end
end
end_point5 = i;
time5 = T * (end_point5 - begin_point5);
x5 = 0:T:time5;
y5 = data5(begin_point5:end_point5, 5);

begin_point6 = 1;
end_point6 = begin_point6 + num;
for i = begin_point6:end_point6
    if (data6(i, 5) > 0.2 || data6(i, 5) < -0.2)
        break
    end
end
end_point6 = i;
time6 = T * (end_point6 - begin_point6);
x6 = 0:T:time6;
y6 = data6(begin_point6:end_point6, 5);

% Multi-step
data7 = xlsread(test,7);
data8 = xlsread(test, 8);
data9 = xlsread(test,9);
data10 = xlsread(test,10);
data11 = xlsread(test,11);
data12 = xlsread(test,12);
y7 = data7(begin_point:end_point, 5);
y8 = data8(begin_point:end_point, 5);
y9 = data9(begin_point:end_point, 5);
y10 = data10(begin_point:end_point, 5);
y11 = data11(begin_point:end_point, 5);

begin_point12 = 1;
end_point12 = 350;
for i = begin_point12:end_point12
    if (data12(i, 5) > 0.2 || data12(i, 5) < -0.2)
        break
    end
end
end_point12 = i;
time12 = T * (end_point12 - begin_point12);
x12 = 0:T:time12;
y12 = data12(begin_point12:end_point12, 5);

% Tradictional（延用上一时刻）
data13 = xlsread(test,13);
data14 = xlsread(test,14);
data15 = xlsread(test,15);

begin_point14 = 1;
end_point14 = begin_point14 + num;
for i = begin_point14:end_point14
    if (data14(i, 5) > 0.2 || data14(i, 5) < -0.2)
        break
    end
end
end_point14 = i;
time14 = T * (end_point14 - begin_point14);
x14 = 0:T:time14;

begin_point15 = 1;
end_point15 = begin_point15 + num;
for i = begin_point15:end_point15
    if (data15(i, 5) > 0.2 || data15(i, 5) < -0.2)
        break
    end
end
end_point15 = i;
time15 = T * (end_point15 - begin_point15);
x15 = 0:T:time15;

y13 = data13(begin_point:end_point, 5);
y14 = data14(begin_point14:end_point14, 5);
y15 = data15(begin_point15:end_point15, 5);

figure(1);
title('\tau = 4 - Single-step', 'FontSize',12);
xlabel('Time(s)','FontSize',10);
ylabel('(rad)','FontSize',10);
box on;
p1 = plot(x, y1, 'k-', x, y2, 'r-', x, y3,'g-', x4, y4, 'b-', 'LineWidth',2); hold on;
l1 = legend(p1, '\rho = 5%', '\rho = 10%', '\rho = 15%', '\rho = 20%', 'Location', 'northwest');
axis([0 time -0.2 0.2]);
hold on;