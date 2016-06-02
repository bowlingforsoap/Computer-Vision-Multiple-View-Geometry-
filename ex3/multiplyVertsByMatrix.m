function [ vertices ] = multiplyVertsByMatrix( vertices, matrix )
%MULTIPLYVERTSBYMATRIX Summary of this function goes here
%   Matrix should be homogeneous, vertices - not

%%apply rotaion matrix to all vertices
vertSize = size(vertices);
for i = 1 : vertSize(1, 1)
    %%to homogeneous 
    newV = [vertices(i, :), 1];
    newV = (matrix * newV');
    %%back to non-homogeneous
    vertices(i, :) = newV(1 : 3);
end

end

