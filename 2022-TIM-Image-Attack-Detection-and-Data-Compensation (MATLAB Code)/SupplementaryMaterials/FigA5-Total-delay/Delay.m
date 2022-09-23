clear all;
clc;
set(0,'defaultfigurecolor','w');

d = 'Delay.xlsx';
data = xlsread(d, 1);

maxtime = 34;
mintime = 40;
for i = 1:1:2000
    data(i,1) = data(i,1) + 2;
    if data(i,1) > maxtime
        data(i,1) = maxtime;
    end
    if data(i,1) < mintime
        mintime = data(i,1);
    end
end
y1 = zeros(1,2000);
y2 = zeros(1,2000);
for i = 1:1:2000
    y1(i) = maxtime;
    y2(i) = mintime;
end

figure(1);
xlabel('Sampling times','FontSize',12); hold on;
ylabel('System delay(ms)','FontSize',12); hold on;
set(gca,'FontSize',10);
box on;
plot(1:2000, data(1:2000,1), 'b', 1:2000, y1(1:2000), 'r:',1:2000, y2(1:2000), 'r:', 'LineWidth',2); hold on;
axis([0 2000 24 36]);
hold on;