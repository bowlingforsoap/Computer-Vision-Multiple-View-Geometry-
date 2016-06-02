function [ skewsymmetricMatrix ] = vecToSkew( vec )
%VECTOSKEW Summary of this function goes here
%   Detailed explanation goes here

skewsymmetricMatrix = [0        -vec(3) vec(2)
                       vec(3)   0       -vec(1)
                       -vec(2)  vec(1)  0];

end

