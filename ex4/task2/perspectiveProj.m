close all;

[V, F] = openOFF('../../ex3/model.off', 'newplot');

figure

%P = patch('Vertices', V, 'Faces', F, 'FaceVertexCData',0.3*ones(size(V,1),3));
axis equal;
shading interp;
camlight right;
camlight left;
  
%% using homogeneous projection matrix
projectedVerts = pinholeProject([0, 0, -1], 5, V);
patch(projectedVerts(1, :), projectedVerts(2, :), 'green');
