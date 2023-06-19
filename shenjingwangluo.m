clc;
clear;
load('matlab.mat');
X=[3.72	0	0.4	3.01	0	1.18	0	3.6	29.92	35.45	6.04	0.62	0	15.95 
4.61	0	0	3.19	0	1.11	0	3.14	32.45	30.62	7.56	0.53	0	15.03 
12.41	0	0	5.24	0.89	2.25	0.76	5.35	59.85	7.29	0	0.64	0	0.00 
16.71	0	0	1.87	0	0.45	0.19	0	70.21	6.69	1.77	0.68	0	0.00 
17.11	0	0	0	1.11	3.65	0	1.34	58.46	0	14.13	1.12	0	0.00 
17.98	0	0	3.19	0.47	1.87	0.33	1.13	44	14.2	6.34	0.66	0	0.00 
18.46	0	0.44	4.96	2.73	3.33	1.79	0.19	44.12	9.76	7.46	0.47	0	0.00 
19.79	0	0	1.44	0	0.7	0	10.57	29.53	32.25	3.13	0.45	0	1.96 
20.14	0	0	1.48	0	1.34	0	10.41	28.68	31.23	3.59	0.37	0	2.58 
21.35	0	0	5.13	1.45	2.51	0.42	0.75	51.34	0	8.75	0	0	0.00 
21.7	0	0	6.4	0.95	3.41	1.39	1.51	44.75	3.26	12.83	0.47	0	0.00 
22.28	0	0.32	3.19	1.28	4.15	0	0.83	55.46	7.04	4.24	0.88	0	0.00 
24.61	0	0	3.58	1.19	5.25	1.19	1.37	40.24	8.94	8.1	0.39	0.47	0.00 
25.42	0	0	1.31	0	2.18	0	1.16	45.1	17.3	0	0	0	0.00 
25.74	1.22	0	2.27	0.55	1.16	0.23	0.7	47.42	8.64	5.71	0.44	0	0.00 
26.25	0	0	1.11	0	0.5	0	0.88	61.03	7.22	1.16	0.61	0	0.00 
28.79	0	0	4.58	1.47	5.38	2.74	0.7	34.18	6.1	11.1	0.46	0	0.00 
29.15	0	0	1.21	0	1.85	0	0.79	41.25	15.45	2.54	0	0	0.00 
29.64	0	0	2.93	0.59	3.57	1.33	3.51	42.82	5.35	8.83	0.19	0	0.00 
30.39	0	0.34	3.49	0.79	3.52	0.86	3.13	39.35	7.66	8.99	0.24	0	0.00 
31.94	0	0	0.47	0	1.59	0	8.46	29.14	26.23	0.14	0.91	0	0.00 
32.93	1.38	0	0.68	0	2.57	0.29	0.73	49.31	9.79	0.48	0.41	0	0.00 
33.59	0	0.21	3.51	0.71	2.69	0	4.93	25.39	14.61	9.38	0.37	0	0.00 
34.34	0	1.41	4.49	0.98	4.35	2.12	0	39.22	10.29	0	0.35	0.4	0.00 
35.78	0	0.25	0.78	0	1.62	0.47	1.51	46.55	10	0.34	0.22	0	0.00 
36.28	0	1.05	2.34	1.18	5.73	1.86	0.26	47.43	0	3.57	0.19	0	0.00 
36.93	0	0	4.24	0.51	3.86	2.74	0	37.74	10.35	1.41	0.48	0.44	0.00 
37.36	0	0.71	0	0	5.45	1.51	4.78	9.3	23.55	5.75	0	0	0.00 
39.57	2.22	0.14	0.37	0	1.6	0.32	0.68	41.61	10.83	0.07	0.22	0	0.00 
45.02	0	0	3.12	0.54	4.16	0	0.7	30.61	6.22	6.34	0.23	0	0.00 
49.01	2.71	0	1.13	0	1.45	0	0.86	32.92	7.95	0.35	0	0	0.00 
50.61	2.31	0	0.63	0	1.9	1.55	1.12	31.9	6.65	0.19	0.2	0	0.00 
51.26	5.74	0.15	0.79	1.09	3.53	0	2.67	21.88	10.47	0.08	0.35	0	0.00 
51.33	5.68	0.35	0	1.16	5.66	0	2.72	20.12	10.88	0	0	0	0.00 
51.54	4.66	0.29	0.87	0.61	3.06	0	0.65	25.4	9.23	0.1	0.85	0	0.00 
53.33	0.8	0.32	2.82	1.54	13.65	1.03	0	15.71	7.31	1.1	0.25	1.31	0.00 
53.79	7.92	0	0.5	0.71	1.42	0	2.99	16.98	11.86	0	0.33	0	0.00 
54.61	0	0.3	2.08	1.2	6.5	1.27	0.45	23.02	4.19	4.32	0.3	0	0.00 
55.21	0	0.25	0	1.67	4.79	0	0.77	25.25	10.06	0.2	0.43	0	0.00 
59.01	2.86	12.53	8.7	0	6.16	2.88	4.73	0	0	1.27	0	0	0.00 
59.81	0	7.68	5.41	1.73	10.05	6.04	2.18	0.35	0.97	4.5	0.12	0	0.00 
60.12	0	0.23	0.89	0	2.72	0	3.01	17.24	10.34	1.46	0.31	0	3.66 
60.74	3.06	0.2	2.14	0	12.69	0.77	0.43	13.61	5.22	0	0.26	0	0.00 
61.28	2.66	0.11	0.84	0.74	5	0	0.53	15.99	10.96	0	0.23	0	0.00 
61.58	0	10.95	7.35	1.77	7.5	2.62	3.27	0	0	0.94	0.06	0	0.47 
61.71	0	12.37	5.87	1.11	5.5	2.16	5.09	1.41	2.86	0.7	0.1	0	0.00 
62.47	3.38	12.28	8.23	0.66	9.23	0.5	0.47	1.62	0	0.16	0	0	0.00 
63.3	0.92	0.3	2.98	1.49	14.34	0.81	0.74	12.31	2.03	0.41	0.25	0	0.00 
63.66	3.04	0.11	0.78	1.14	6.06	0	0.54	13.66	8.99	0	0.27	0	0.00 
65.18	2.1	14.52	8.27	0.52	6.18	0.42	1.07	0.11	0	0	0.04	0	0.00 
65.88	0	9.67	7.12	1.56	6.44	2.06	2.18	0	0	0.79	0	0	0.36 
65.91	0	0	1.6	0.89	3.11	4.59	0.44	16.55	3.42	1.62	0.3	0	0.00 
65.91	0	0	0.38	0	1.44	0.17	0.16	22.05	5.68	0.42	0	0	0.00 
67.65	0	7.37	0	1.98	11.15	2.39	2.51	0.2	1.38	4.18	0.11	0	0.00 
68.08	0	0.26	1.34	1	4.7	0.41	0.33	17.14	4.04	1.04	0.12	0.23	0.00 
69.33	0	9.99	6.32	0.87	3.93	1.74	3.87	0	0	1.17	0	0	0.39 
69.71	0	0.21	0.46	0	2.36	1	0.11	19.76	4.88	0.17	0	0	0.00 
75.51	0	0.15	0.64	1	2.35	0	0.47	16.16	3.55	0.13	0	0	0.00 
76.68	0	0	4.71	1.22	6.19	2.37	3.28	1	1.97	1.1	0	0	0.00 
79.46	0	9.42	0	1.53	3.05	0	0	0	0	1.36	0.07	2.36	0.00 
87.05	0	5.19	2.01	0	4.06	0	0.78	0.25	0	0.66	0	0	0.00 
92.35	0	0.74	1.66	0.64	3.5	0.35	0.55	0	0	0.21	0	0	0.00 
92.63	0	0	1.07	0	1.98	0.17	3.24	0	0	0.61	0	0	0.00 
92.72	0	0	0.94	0.54	2.51	0.2	1.54	0	0	0.36	0	0	0.00 
94.29	0	1.01	0.72	0	1.46	0.29	1.65	0	0	0.15	0	0	0.00 
95.02	0	0.59	0.62	0	1.32	0.32	1.55	0	0	0.35	0	0	0.00 
96.77	0	0.92	0.21	0	0.81	0.26	0.84	0	0	0	0	0	0.00 
]
Y=[1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
0
0
1
1
1
0
0
0
1
1
0
0
1
1
0
1
0
1
1
0
0
0
0
0
0
0
0
0
];
pridict_y=zeros(8,1);
pridict_x=[78.45	0	0	6.08	1.86	7.23	2.15	2.11	0	0	1.06	0.03	0	0.51
37.75	0	0	7.63	0	2.33	0	0	34.3	0	14.27	0	0	0
31.95	0	1.36	7.19	0.81	2.93	7.06	0.21	39.58	4.69	2.68	0.52	0	0
35.47	0	0.79	2.89	1.05	7.07	6.45	0.96	24.28	8.31	8.45	0.28	0	0
64.29	1.2	0.37	1.64	2.34	12.75	0.81	0.94	12.23	2.16	0.19	0.21	0.49	0
93.17	0	1.35	0.64	0.21	1.52	0.27	1.73	0	0	0.21	0	0	0
90.83	0	0.98	1.12	0	5.06	0.24	1.17	0	0	0.13	0	0	0.11
51.12 	0.00 	0.23 	0.89 	0.00 	2.12 	0.00 	9.01 	21.24 	11.34 	1.46 	0.31 	0.00 	2.26 
];
for i=1:8
    pridict_y(i,1)=sim(net,pridict_x(i,:)');
end
hhh=[0 1 1 1 1 0 0 1];
wucha=abs(pridict_y'-hhh);
wucha=sum(wucha)/8;

mingandufenxi_a1=[78.45	0	0	6.08	1.86	7.23	2.15	2.11	0	0	1.06	0.03	0	0.51
];
for i=1:1:25
    mingandufenxi_a1=[mingandufenxi_a1;mingandufenxi_a1(1,:)];
end
for i=2:1:26
    mingandufenxi_a1(i,:)=mingandufenxi_a1(i,:)-[i-1,zeros(1,13)];
end

for i=1:26
    pridict_a1(i,1)=sim(net,mingandufenxi_a1(i,:)');
end

figure(1);
plot(mingandufenxi_a1(:,1),pridict_a1,'Linewidth',1.5);
xlabel('二氧化硅含量');
ylabel('预测结果');
title('样本A1对二氧化硅含量的敏感度');
mingandu_of_sio2_a1=(78.45-61.45)/78.45;

mingandufenxi_a1=[78.45	0	0	6.08	1.86	7.23	2.15	2.11	0	0	1.06	0.03	0	0.51
];

for i=1:1:39
    mingandufenxi_a1=[mingandufenxi_a1;mingandufenxi_a1(1,:)];
end
for i=2:1:40
    mingandufenxi_a1(i,:)=mingandufenxi_a1(i,:)+[zeros(1,8),i-1,zeros(1,5)];
end

for i=1:40
    pridict_a1(i,1)=sim(net,mingandufenxi_a1(i,:)');
end

figure(2);
plot(mingandufenxi_a1(:,9),pridict_a1,'Linewidth',1.5);
xlabel('氧化铅含量');
ylabel('预测结果');
title('样本A1对氧化铅含量的敏感度');

mingandufenxi_a2=[37.75	0	0	7.63	0	2.33	0	0	34.3	0	14.27	0	0	0
];

for i=1:1:34
    mingandufenxi_a2=[mingandufenxi_a2;mingandufenxi_a2(1,:)];
end
for i=2:1:35
    mingandufenxi_a2(i,:)=mingandufenxi_a2(i,:)-[zeros(1,8),i-1,zeros(1,5)];
end


pridict_a2=[];
for i=1:35
    pridict_a2(i,1)=sim(net,mingandufenxi_a2(i,:)');
end

figure(3);
plot(mingandufenxi_a2(:,9),pridict_a2,'Linewidth',1.5);
xlabel('氧化铅含量');
ylabel('预测结果');
title('样本A2对氧化铅含量的敏感度');

mingandufenxi_a8=[31.95	0	1.36	7.19	0.81	2.93	7.06	0.21	39.58	4.69	2.68	0.52	0	0
];
for i=1:1:78-31
    mingandufenxi_a8=[mingandufenxi_a8;mingandufenxi_a8(1,:)];
end

for i=2:1:79-31
    mingandufenxi_a8(i,:)=mingandufenxi_a8(i,:)+[i-1,zeros(1,13)];
end

pridict_a4=[];
for i=1:48
    pridict_a4(i,1)=sim(net,mingandufenxi_a8(i,:)');
end

figure(4);
plot(mingandufenxi_a8(:,1),pridict_a4,'Linewidth',1.5);
xlabel('二氧化硅含量');
ylabel('预测结果');
title('样本A3对二氧化硅含量的敏感度');

mingandufenxi_a8=[31.95	0	1.36	7.19	0.81	2.93	7.06	0.21	39.58	4.69	2.68	0.52	0	0
];
for i=1:1:39
    mingandufenxi_a8=[mingandufenxi_a8;mingandufenxi_a8(1,:)];
end

for i=2:1:40
    mingandufenxi_a8(i,:)=mingandufenxi_a8(i,:)-[zeros(1,8),i-1,zeros(1,5)];
end

pridict_a4=[];
for i=1:40
    pridict_a4(i,1)=sim(net,mingandufenxi_a8(i,:)');
end

figure(4);
plot(mingandufenxi_a8(:,1),pridict_a4,'Linewidth',1.5);
xlabel('氧化铝含量');
ylabel('预测结果');
title('样本A3对氧化铝含量的敏感度');

mingandufenxi_a8=[35.47	0	0.79	2.89	1.05	7.07	6.45	0.96	24.28	8.31	8.45	0.28	0	0
];
for i=1:1:24
    mingandufenxi_a8=[mingandufenxi_a8;mingandufenxi_a8(1,:)];
end

for i=2:1:25
    mingandufenxi_a8(i,:)=mingandufenxi_a8(i,:)-[i-1,zeros(1,13)];
end

pridict_a4=[];
for i=1:25
    pridict_a4(i,1)=sim(net,mingandufenxi_a8(i,:)');
end

figure(4);
plot(mingandufenxi_a8(:,1),pridict_a4,'Linewidth',1.5);
xlabel('氧化铅含量');
ylabel('预测结果');
title('样本A4对氧化铅含量的敏感度');


mingandufenxi_a8=[64.29	1.2	0.37	1.64	2.34	12.75	0.81	0.94	12.23	2.16	0.19	0.21	0.49	0
];
for i=1:1:12
    mingandufenxi_a8=[mingandufenxi_a8;mingandufenxi_a8(1,:)];
end

for i=2:1:13
    mingandufenxi_a8(i,:)=mingandufenxi_a8(i,:)-[zeros(1,8),i-1,zeros(1,5)];
end

pridict_a4=[];
for i=1:13
    pridict_a4(i,1)=sim(net,mingandufenxi_a8(i,:)');
end

figure(4);
plot(mingandufenxi_a8(:,1),pridict_a4,'Linewidth',1.5);
xlabel('氧化铅含量');
ylabel('预测结果');
title('样本A5对氧化铅含量的敏感度');


mingandufenxi_a8=[51.12 	0.00 	0.23 	0.89 	0.00 	2.12 	0.00 	9.01 	21.24 	11.34 	1.46 	0.31 	0.00 	2.26 
];
for i=1:1:21
    mingandufenxi_a8=[mingandufenxi_a8;mingandufenxi_a8(1,:)];
end

for i=2:1:22
    mingandufenxi_a8(i,:)=mingandufenxi_a8(i,:)-[zeros(1,8),i-1,zeros(1,5)];
end

pridict_a8=[];
for i=1:22
    pridict_a8(i,1)=sim(net,mingandufenxi_a8(i,:)');
end

figure(4);
plot(mingandufenxi_a8(:,9),pridict_a8,'Linewidth',1.5);
xlabel('氧化铅含量');
ylabel('预测结果');
title('样本A8对氧化铅含量的敏感度');