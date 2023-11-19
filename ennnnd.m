clear
load('lijing.mat')
nam={'1-1'
'1-2'
'1-3'
'1-4'
'1-5'
'1-6'
'1-7'
'1-8'
'1-9'
'2-1'
'2-2'
'2-3'
'2-4'
'2-5'
'2-6'
'3-1'
'3-2'
'3-3'
'3-4'
'3-5'
'3-6'
'3-7'
'3-8'
'3-9'
'3-10'
};
d1 = [0.040,0.063,0.09,0.125,0.18,0.25,0.355,0.5,0.71,1,1.4,2,4];
fppp =zeros(25,1);
fppp(:) = 100;
fpp =cat(2,fppp,fpp);
%%
b=[1,6,10,16,21];

x_labels = {'>2','1.4~2.0', '1~1.4', '0.71~1', '0.5~0.71', '0.355~0.5','0.25~0.355','0.18~0.25','0.125~0.18','0.09~0.125','0.063~0.125','<0.063'};
for i=3
    a=b(i);
plot( m1(a,:),'color','#F58A07', 'DisplayName', nam{a},'LineWidth',1.9);
hold on
plot( m1(a+1,:),'color','g', 'DisplayName', nam{a+1},'LineWidth',1.9);
hold on

plot( m1(a+2,:),'color','#002EA6', 'DisplayName', nam{a+2},'LineWidth',1.9);
legend('show', 'Location', 'northeast');
hold on
plot(  m1(a+3,:),'color','r', 'DisplayName', nam{a+3},'LineWidth',1.9);
hold on
plot( m1(a+4,:),'color','#000000', 'DisplayName', nam{a+4},'LineWidth',1.9);
hold on
 plot( m1(a+5,:),'color',"#00FFFF", 'DisplayName', nam{a+5},'LineWidth',1.9);
 hold on
%plot( m1(a+6,:),'color',	"#00FFFF", 'DisplayName', nam{a+6},'LineWidth',1.9);

box off
set(gca, 'TickDir', 'out');
set(gca, 'XGrid', 'on', 'YGrid', 'on');
set(gca, 'XTick', 1:length(x_labels), 'XTickLabel', x_labels);
xlabel('粒径范围/mm');
ylabel('分级质量分数/%');
end

%%

%%
for i=5
    a=b(i);
    plot( log10(d1),flip(fpp(a,:)),'color','#000000', 'DisplayName', nam{a},'LineWidth',1.9,'Marker',"diamond",'MarkerFaceColor','black','MarkerSize',4);
hold on
plot( log10(d1),flip(fpp(a+1,:)),'color','#F58A07', 'DisplayName', nam{a+1},'LineWidth',1.9,'Marker',"o",'MarkerFaceColor','#F58A07','MarkerSize',3);
hold on
plot( log10(d1),flip(fpp(a+2,:)),'color','g', 'DisplayName', nam{a+2},'LineWidth',1.9,'Marker',"^",'MarkerFaceColor','g','MarkerSize',3);
hold on

plot( log10(d1),flip(fpp(a+3,:)),'color','#002EA6', 'DisplayName', nam{a+3},'LineWidth',1.9,'Marker',"+",'MarkerFaceColor','#002EA6','MarkerSize',6);
legend('show', 'Location', 'northwest');
hold on
plot( log10(d1),flip(fpp(a+4,:)),'color','r', 'DisplayName', nam{a+4},'LineWidth',1.9,'Marker',"square",'MarkerFaceColor','r','MarkerSize',6);
%hold on
 
%plot( log10(d1),flip(fpp(a+6,:)),'color','#00FFFF', 'DisplayName', nam{a+5},'LineWidth',1.9,'Marker',"diamond",'MarkerFaceColor','black','MarkerSize',4);

box on
set(gca, 'TickDir', 'none');
set(gca, 'XGrid', 'on', 'YGrid', 'on');
xtick_num = [log10(linspace(0.01,0.1,10)),log10(linspace(0.10001,1,10)),log10(linspace(1.00001,10,10))];
set(gca,'xtick',xtick_num,'xticklabels',{'0.01','','','','','','','','','',...
'0.1','','','','','','','','','',...
'1','','','','','','','','','10'})
axis([log10(0.01) log10(10) 0 100])
%set(gca, 'XTick', 1:length(x_labels), 'XTickLabel', x_labels);
%title('累积频率图');
xlabel('粒径级/mm');
ylabel('小于某粒径沙的百分数/%');
end