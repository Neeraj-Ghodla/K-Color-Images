function squaredDistance = SquaredDistance(P, Q)
% This function is responsible for calculating the distance between 2
% points in 3D space. The 2 points contain the RGB value of specific pixels
% Inputs:
%       firstPoint: 1D or 3D array containing the R, G, B values i.e
%       either 3x1 or 1x3 or 1x1x3 array
%
%       secondPoint: 1D or 3D array containing the R, G, B values i.e
%       either a 3x1 or 1x3 or 1x1x3 array
%
% Outputs:
%       squaredDistance: sum of the squared distance between the points P
%       and Q
% Author: Neeraj Ghodla

squaredDistance = P - Q;

end