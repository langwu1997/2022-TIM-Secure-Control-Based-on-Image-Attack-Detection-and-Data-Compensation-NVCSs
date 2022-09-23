close all;
set(0,'defaultfigurecolor','w');
num = 500;
begin_point = 1;
end_point = begin_point + num;
T = 0.03;
time = T * (end_point - begin_point);
x = 0:T:time;
test1 = 'PredictCompare_tauTo4.xlsx';
test2 = 'UpdateCompare_tauTo4.xlsx';

% traditional prediction
data15 = xlsread(test1,15);

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
y15 = data15(begin_point15:end_point15, 7);

% Single-step prediction
data6 = xlsread(test1,18);
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
y6 = data6(begin_point6:end_point6, 7);


% Multi-step prediction
data4 = xlsread(test1,12);
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

y4 = data4(begin_point4:end_point4, 7);
% Single-step update with multi-step prediction
data04 = xlsread(test2,6);
y04 = data04(begin_point:end_point, 8);


% Multi-step update with multi-step prediction
data14 = xlsread(test2,12);
y14 = data14(begin_point:end_point, 8);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*******
figure(1);
plot(x15, y15, 'g-',x6, y6,'r-',x4, y4, 'b-',x, y04, 'c-',x, y14, 'm-','LineWidth',1); 
legend('Tradictional predicition', 'Single-step prediction', 'Multi-step prediction', 'Single-step update with multi-step prediction','Multi-step update with multi-step prediction','Location','northwest');
axis([0 time -0.2 0.2]);
% title('\tau = 4 & \rho = 15%', 'FontSize',12);
xlabel('Time(s)','FontSize',12); 
ylabel('(rad)','FontSize',12); 
hold on;
% h1 = axes('Position',[0.45 0.5 0.5 0.1]);
% % plot(150:250,y15(150:250, 7), 'g-','LineWidth',2);hold on;
% plot(130:end_point6,y6(130:end_point6,7),'r-','LineWidth',2);hold on;
% plot(130:end_point4,y4(130:end_point4,7), 'b-','LineWidth',2);hold on;
% plot(130:250,y04(150:250, 8), 'c-','LineWidth',2);hold on;
% plot(130:250,y14(150:250, 8), 'm-','LineWidth',2);hold off;



