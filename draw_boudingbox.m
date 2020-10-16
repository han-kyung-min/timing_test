
datapath = '~/Results/timing_test/data002/view6';
idx = 6 ;

camstring = sprintf('%s/campose_%d.txt', datapath, idx);
ptstring  = sprintf('%s/point_xyz_%d.txt', datapath, idx);
wHc = load(camstring) ;
pt  = load(ptstring)' ;
pt_c_h = inv(wHc) * hom(pt) ;

C = [0, 0, 0.01 + 2.5] ;   % you center point 
L = 5.0;

figure(1); clf
plot3( pt_c_h(1,:), pt_c_h(2,:), pt_c_h(3,:), 'k.', 'markersize', 1) ;
hold on
displayCoordFrames(eye(4,4), 1) ;

%Vertices for Line Cube. Order matters
X = [0 0 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0]'-.5;
Y = [0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 0 0]'-.5;
Z = [0 0 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0]'-.5;
B = L*eye(3,3)*[X Y Z]' + C';

%Single plot command for all 'cube lines'
hold on
plot3(B(1,:),B(2,:),B(3,:));
axis equal
title(['\fontsize{14} C=[0, 0, 0.01 + 2.5 ] ']);

figure(2); clf;
plot3( pt(1,:), pt(2,:), pt(3,:), 'k.', 'markersize', 1) ;
hold on
displayCoordFrames(wHc, 1) ;

B_w = wHc * hom(B) ;
C_w_h = wHc * hom(C') ;

figure(2); hold on
plot3(B_w(1,:), B_w(2,:), B_w(3,:) );
title(['\fontsize{14} C=[-6.137, 14.162, 0.500 ] ']);
axis equal

