function [ projectedVerts ] = pinholeProject( C, f, V )
%PINHOLEPROJECT Projects points using pinhole camera model
%   C - cam translation vector along Z (coordinates basially; see task desc.)
%   f - focus length
%   V - vertices to project

% vertices -> homogeneous vertices
homoV = [V, ones(size(V, 1), 1)];

% world coords -> camera coords
g = [1 0 0 -C(1); 
     0 1 0 -C(2); 
     0 0 1 -C(3); 
     0 0 0 1];
homoV = g * homoV';

% divide by Z and multiply by f
projectedVerts = ((homoV / homoV(3)) * f)';
% discard 3rd, 4th component
%projectedVerts = projectedVerts(: , 1:2);

end

