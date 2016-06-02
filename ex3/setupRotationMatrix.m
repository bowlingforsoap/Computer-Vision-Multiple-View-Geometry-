function [rotMat] = setupRotationMatrix( deg, axisName )
%ROTATEABOUTAXIS Summary of this function goes here
%   Detailed explanation goes here

%deg -> rad
deg = deg * pi / 180;

%construct a rotation matrix based on the axis of rotation
switch axisName
    case 'x'
        'Using a rotaion matrix for X'
        rotMat = [1  0          0         0
                  0  cos(deg)   -sin(deg) 0
                  0  sin(deg)   cos(deg)  0
                  0  0          0         1];
    case 'y'
        'Using a rotaion matrix for Y'
        rotMat = [cos(deg)  0   sin(deg)  0
                  0         1   0         0
                  -sin(deg) 0   cos(deg)  0
                  0         0   0         1];
    case 'z'
        'Using a rotaion matrix for Z'
        rotMat = [cos(deg)   -sin(deg) 0        0
                  sin(deg)   cos(deg)  0        0
                  0         0          1        0
                  0         0          0        1];
    otherwise
%         %%identity for rotation
% %         rotMat = [1  0          0         0
% %                   0  1          0         0
% %                   0  0          1         0
% %                   0  0          0         1];
        return
end
end

