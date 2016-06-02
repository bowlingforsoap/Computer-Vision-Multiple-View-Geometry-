%% load & display model
[V,F,P] = openOFF('model.off');

%% close figure
close all;    

%% display model again (possibly with changed vertex positions V)
% not sure if the previous comment is valid =[
figure

%% translate -> rotate
transMat = [1 0 0 .5
            0 1 0 .2
            0 0 1 .1
            0 0 0 1];
V = multiplyVertsByMatrix(V, transMat);  

rotMat = setupRotationMatrix(25, 'z');
V = multiplyVertsByMatrix(V, rotMat);
rotMat = setupRotationMatrix(5, 'x');
V = multiplyVertsByMatrix(V, rotMat);

P = patch('Vertices', V, 'Faces', F, 'FaceVertexCData',0.3*zeros(size(V,1),3)); % the last argument specifies the color

%% rotate -> translate
rotMat = setupRotationMatrix(25, 'z');
V = multiplyVertsByMatrix(V, rotMat);
rotMat = setupRotationMatrix(5, 'x');
V = multiplyVertsByMatrix(V, rotMat);

transMat = [1 0 0 .5
            0 1 0 .2
            0 0 1 .1
            0 0 0 1];
V = multiplyVertsByMatrix(V, transMat);    

P = patch('Vertices', V, 'Faces', F, 'FaceVertexCData',0.3*ones(size(V,1),3));

%% inverse rotate -> translate
rotMat = setupRotationMatrix(5, 'x');
V = multiplyVertsByMatrix(V, rotMat);
rotMat = setupRotationMatrix(25, 'z');
V = multiplyVertsByMatrix(V, rotMat);

transMat = [1 0 0 .5
            0 1 0 .2
            0 0 1 .1
            0 0 0 1];
V = multiplyVertsByMatrix(V, transMat); 

P = patch('Vertices', V, 'Faces', F, 'FaceVertexCData', 0.3*rand(size(V,1),3));

%%
axis equal;
shading interp;
camlight right;
camlight left;