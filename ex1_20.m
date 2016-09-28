[x0,v0] = meshgrid(-10:.01:10);
A = sqrt((10.^2)*(x0.^2)+(v0.^2))/10;
mesh(x0,v0,A)