function [ vec ] = skewToVec( skewsymmetricMatrix )
%SKEWTOVEC Summary of this function goes here
%   Detailed explanation goes here

vec = [skewsymmetricMatrix(3, 2) skewsymmetricMatrix(1, 3) skewsymmetricMatrix(2, 1)];

end

