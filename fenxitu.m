%有无风化化学含量统计规律
clc;
clear;
fenghua_gaojia=[92.63	0	0	1.07	0	1.98	0.17	3.24	0	0	0.61	0	0	0.00 
95.02	0	0.59	0.62	0	1.32	0.32	1.55	0	0	0.35	0	0	0.00 
96.77	0	0.92	0.21	0	0.81	0.26	0.84	0	0	0	0	0	0.00 
94.29	0	1.01	0.72	0	1.46	0.29	1.65	0	0	0.15	0	0	0.00 
92.35	0	0.74	1.66	0.64	3.5	0.35	0.55	0	0	0.21	0	0	0.00 
92.72	0	0	0.94	0.54	2.51	0.2	1.54	0	0	0.36	0	0	0.00 
];
average_of_gaojia_fenghua=sum(fenghua_gaojia)/6;
wufenghua_gaojia=[69.33	0	9.99	6.32	0.87	3.93	1.74	3.87	0	0	1.17	0	0	0.39 
87.05	0	5.19	2.01	0	4.06	0	0.78	0.25	0	0.66	0	0	0.00 
61.71	0	12.37	5.87	1.11	5.5	2.16	5.09	1.41	2.86	0.7	0.1	0	0.00 
65.88	0	9.67	7.12	1.56	6.44	2.06	2.18	0	0	0.79	0	0	0.36 
61.58	0	10.95	7.35	1.77	7.5	2.62	3.27	0	0	0.94	0.06	0	0.47 
67.65	0	7.37	0	1.98	11.15	2.39	2.51	0.2	1.38	4.18	0.11	0	0.00 
59.81	0	7.68	5.41	1.73	10.05	6.04	2.18	0.35	0.97	4.5	0.12	0	0.00 
59.01	2.86	12.53	8.7	0	6.16	2.88	4.73	0	0	1.27	0	0	0.00 
62.47	3.38	12.28	8.23	0.66	9.23	0.5	0.47	1.62	0	0.16	0	0	0.00 
65.18	2.1	14.52	8.27	0.52	6.18	0.42	1.07	0.11	0	0	0.04	0	0.00 
79.46	0	9.42	0	1.53	3.05	0	0	0	0	1.36	0.07	2.36	0.00 
76.68	0	0	4.71	1.22	6.19	2.37	3.28	1	1.97	1.1	0	0	0.00 
];
average_of_gaojia_wufenghua=sum(wufenghua_gaojia)/12;

fenghua_qianbei=[36.28	0	1.05	2.34	1.18	5.73	1.86	0.26	47.43	0	3.57	0.19	0	0.00 
20.14	0	0	1.48	0	1.34	0	10.41	28.68	31.23	3.59	0.37	0	2.58 
4.61	0	0	3.19	0	1.11	0	3.14	32.45	30.62	7.56	0.53	0	15.03 
33.59	0	0.21	3.51	0.71	2.69	0	4.93	25.39	14.61	9.38	0.37	0	0.00 
29.64	0	0	2.93	0.59	3.57	1.33	3.51	42.82	5.35	8.83	0.19	0	0.00 
19.79	0	0	1.44	0	0.7	0	10.57	29.53	32.25	3.13	0.45	0	1.96 
3.72	0	0.4	3.01	0	1.18	0	3.6	29.92	35.45	6.04	0.62	0	15.95 
35.78	0	0.25	0.78	0	1.62	0.47	1.51	46.55	10	0.34	0.22	0	0.00 
39.57	2.22	0.14	0.37	0	1.6	0.32	0.68	41.61	10.83	0.07	0.22	0	0.00 
32.93	1.38	0	0.68	0	2.57	0.29	0.73	49.31	9.79	0.48	0.41	0	0.00 
26.25	0	0	1.11	0	0.5	0	0.88	61.03	7.22	1.16	0.61	0	0.00 
16.71	0	0	1.87	0	0.45	0.19	0	70.21	6.69	1.77	0.68	0	0.00 
18.46	0	0.44	4.96	2.73	3.33	1.79	0.19	44.12	9.76	7.46	0.47	0	0.00 
12.41	0	0	5.24	0.89	2.25	0.76	5.35	59.85	7.29	0	0.64	0	0.00 
21.7	0	0	6.4	0.95	3.41	1.39	1.51	44.75	3.26	12.83	0.47	0	0.00 
53.33	0.8	0.32	2.82	1.54	13.65	1.03	0	15.71	7.31	1.1	0.25	1.31	0.00 
28.79	0	0	4.58	1.47	5.38	2.74	0.7	34.18	6.1	11.1	0.46	0	0.00 
17.98	0	0	3.19	0.47	1.87	0.33	1.13	44	14.2	6.34	0.66	0	0.00 
24.61	0	0	3.58	1.19	5.25	1.19	1.37	40.24	8.94	8.1	0.39	0.47	0.00 
21.35	0	0	5.13	1.45	2.51	0.42	0.75	51.34	0	8.75	0	0	0.00 
25.74	1.22	0	2.27	0.55	1.16	0.23	0.7	47.42	8.64	5.71	0.44	0	0.00 
22.28	0	0.32	3.19	1.28	4.15	0	0.83	55.46	7.04	4.24	0.88	0	0.00 
17.11	0	0	0	1.11	3.65	0	1.34	58.46	0	14.13	1.12	0	0.00 
29.15	0	0	1.21	0	1.85	0	0.79	41.25	15.45	2.54	0	0	0.00 
25.42	0	0	1.31	0	2.18	0	1.16	45.1	17.3	0	0	0	0.00 
30.39	0	0.34	3.49	0.79	3.52	0.86	3.13	39.35	7.66	8.99	0.24	0	0.00 
];
average_of_qianbei_fenghua=sum(fenghua_qianbei)/26;

wufenghua_qianbei=[37.36	0	0.71	0	0	5.45	1.51	4.78	9.3	23.55	5.75	0	0	0.00 
31.94	0	0	0.47	0	1.59	0	8.46	29.14	26.23	0.14	0.91	0	0.00 
34.34	0	1.41	4.49	0.98	4.35	2.12	0	39.22	10.29	0	0.35	0.4	0.00 
36.93	0	0	4.24	0.51	3.86	2.74	0	37.74	10.35	1.41	0.48	0.44	0.00 
65.91	0	0	1.6	0.89	3.11	4.59	0.44	16.55	3.42	1.62	0.3	0	0.00 
69.71	0	0.21	0.46	0	2.36	1	0.11	19.76	4.88	0.17	0	0	0.00 
75.51	0	0.15	0.64	1	2.35	0	0.47	16.16	3.55	0.13	0	0	0.00 
65.91	0	0	0.38	0	1.44	0.17	0.16	22.05	5.68	0.42	0	0	0.00 
60.12	0	0.23	0.89	0	2.72	0	3.01	17.24	10.34	1.46	0.31	0	3.66 
61.28	2.66	0.11	0.84	0.74	5	0	0.53	15.99	10.96	0	0.23	0	0.00 
55.21	0	0.25	0	1.67	4.79	0	0.77	25.25	10.06	0.2	0.43	0	0.00 
51.54	4.66	0.29	0.87	0.61	3.06	0	0.65	25.4	9.23	0.1	0.85	0	0.00 
49.01	2.71	0	1.13	0	1.45	0	0.86	32.92	7.95	0.35	0	0	0.00 
];
average_of_wufenghua_qianbei=sum(wufenghua_qianbei)/13;

figure(1);
x=0:1:13;
plot(x,average_of_gaojia_fenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_gaojia_wufenghua,'LineWidth',1.5);
axis([0,14,-10,100]);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});

figure(2);
x=0:1:13;
plot(x,average_of_qianbei_fenghua,'LineWidth',1)
hold on;
plot(x,average_of_wufenghua_qianbei,'LineWidth',1);
axis([0,18,-10,100]);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});

figure(3);
x=[6,10];
explode=[0,1];
pie(x,explode);

figure(4);
y=[28,12];
explode=[0,1];
pie(y,explode);

figure(5);
x=0:1:13;
plot(x,average_of_gaojia_fenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_qianbei_fenghua,'LineWidth',1.5);
axis([0,18,-10,100]);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});

figure(5);
x=0:1:13;
plot(x,average_of_gaojia_fenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_qianbei_fenghua,'LineWidth',1.5);
axis([0,13,-10,100]);
set(gca,'XTick',[0:1:13]);
set(gca,'XTickLabelRotation',45);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});
xlabel('化合物');
ylabel('含量%');
title('风化的高钾玻璃和铅钡玻璃各化学成分含量平均值对比折线图');
legend('风化的高钾玻璃各化学成分含量平均值折线图','风化的铅钡玻璃各化学成分含量平均值折线图');

figure(5);
x=0:1:13;
plot(x,average_of_gaojia_wufenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_wufenghua_qianbei,'LineWidth',1.5);
axis([0,13,-10,100]);
set(gca,'XTick',[0:1:13]);
set(gca,'XTickLabelRotation',45);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});
xlabel('化合物');
ylabel('含量%');
title('无风化的高钾玻璃和铅钡玻璃各化学成分含量平均值对比折线图');
legend('无风化的高钾玻璃各化学成分含量平均值折线图','无风化的铅钡玻璃各化学成分含量平均值折线图');

subplot(2,1,1);
x=0:1:13;
plot(x,average_of_gaojia_fenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_qianbei_fenghua,'LineWidth',1.5);
hold on;
axis([0,13,-10,100]);
set(gca,'XTick',[0:1:13]);
set(gca,'XTickLabelRotation',45);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});
xlabel('化合物');
ylabel('含量%');
title('风化的高钾玻璃和铅钡玻璃各化学成分含量平均值对比折线图');
legend('风化的高钾玻璃各化学成分含量平均值折线图','风化的铅钡玻璃各化学成分含量平均值折线图');

subplot(2,1,2);
x=0:1:13;
plot(x,average_of_gaojia_wufenghua,'LineWidth',1.5)
hold on;
plot(x,average_of_wufenghua_qianbei,'LineWidth',1.5);
axis([0,13,-10,100]);
set(gca,'XTick',[0:1:13]);
set(gca,'XTickLabelRotation',45);
set(gca,'XTickLabel',{'二氧化硅'	'氧化钠'	'氧化钾'	'氧化钙'	'氧化镁'	'氧化铝'	'氧化铁'	'氧化铜'	'氧化铅'	'氧化钡'	'五氧化二磷'	'氧化锶'	'氧化锡'	'二氧化硫'
});
xlabel('化合物');
ylabel('含量%');
title('无风化的高钾玻璃和铅钡玻璃各化学成分含量平均值对比折线图');
legend('无风化的高钾玻璃各化学成分含量平均值折线图','无风化的铅钡玻璃各化学成分含量平均值折线图');