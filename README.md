# Timing tests

## data001 contains 
map1.bt :           binary map with octree info

map1.ot :           probablity map with octree info

point_xyz_0.txt :   xyz point cloud reconstructed from the view point 0

camerapose_0.txt:   the camera pose matrix of the view point 0 ( [R t] in homogenious transformation matrix form)

rayshooting_0.txt:  The rayshooting time for the points stored in "point_xyz_0.txt". 50 measurements in total. 

map1.png:   full 2D grid map obtained from this scene


## data002 contains 
localmap0.bt :           binary map with octree info

localmap0.ot :           probablity map with octree info

point_xyz_0.txt :       xyz point cloud reconstructed from the view point 0

camerapose_0.txt:       the camera pose matrix of the view point 0 ( [R t] in homogenious transformation matrix form)

rayshooting_0.txt:      The rayshooting time for the points stored in "point_xyz_0.txt". 50 measurements in total. 

frame0000.jpg:          snapshot at viewpoint0

box_cent.txt:           centroids (x,y,z) of the boxes w.r.t the cam coord frame (1st row) and the world coord frame (the 2nd row)

view*_wrt_cam.jpg:      A plot of point clouds + cam pose + boundingbox w.r.t cam coord frame.
view*_wrt_world.jpg:    A plot of point clouds + cam pose + boundingbox w.r.t world coord frame.




