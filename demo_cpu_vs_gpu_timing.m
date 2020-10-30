

% script draw bar
x = [1:6];
cpu = [886.83 1446.52 1349.87 1294.31 1211.58 1236.16] ;
gpu = [1.42 1.67 2.07 1.14 1.11 1.59] ;
bvh = [0.59 0.63 0.58 0.55 0.54 0.68] ;
rt  = [1.42 1.67 2.07 1.14 1.11 1.59] ;
rb  = [14.19 14.63 14.39 14.23 14.33 14.29];

cpu_ = [zeros(2,6); cpu];
gpu_ = [bvh; rt; rb];

datalabels = {'(a)','(b)','(c)','(d)','(e)','(f)'} ;
components = {'RayShooting(CPU)','BVH(GPU)', 'RayTracing(GPU)', 'ReadBack(GPU to CPU)'}

hfig = figure(1); clc; close all
hBarGrp=bar([cpu;gpu],'grouped','stacked');  % six bars, group by 2
off=hBarGrp(2).XOffset;             % hidden property, offset from nominal x
hBar1=bar(x+off,cpu,0.35,'stacked'); % draw first stacked as wanted
hold all                            % hold axes, don't reset color order position
hBar2=bar(x-off,gpu_',0.35,'stacked'); % second with place holder
set(gca, 'YScale', 'log')
set(gca(), 'XTick', [1:6]);
set(gca(), 'XTickLabel', datalabels, 'fontsize', 12);

h_leg = legend( components ) ;
set(h_leg, 'fontsize',12, 'location', 'NorthWest') ;
yaxis([0 5000])


ylabel('Run Time (ms)')

%saveTightFigure(hfig,'timing_res.pdf')






