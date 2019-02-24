function newMeans = UpdateMeans(ImageArray3D, k, Clusters)
% This funciton is responsible for calculating the mean value for each
% cluster.
%
% Inputs:
%       ImageArray3D: A m-n-3 3D image array containing the RGB values
%       k: A value specifying the number of clusters
%       Clusters: A m-n 2D array specifying which cluster each pixel
%       belongs to.
%
% Outputs:
%       newMeans: A k-1-3 3D array containing the new mean values for each
%       cluster.
%
% Author: Neeraj Ghodla

% Preallocating the newMeans array
newMeans = zeros(k, 1, 3);

% Breaking the image into its R, G, and B components
R = ImageArray3D(:, :, 1);
G = ImageArray3D(:, :, 2);
B = ImageArray3D(:, :, 3);

% Looping through all the values of k
for i = 1 : k
    % Finding out the positions of the ith cluster
    currentCluster = find(Clusters == i);
    
    % Preallocating the colorValue array
    colorValue = zeros(length(currentCluster), 3);
    
    % Storing the values stored in R, G, B array at these specific indices
    % in the colorValue array
    colorValue(:, 1) = R(currentCluster);
    colorValue(:, 2) = G(currentCluster);
    colorValue(:, 3) = B(currentCluster);
    
    % Adding all the value along the rows i.e in vertical direction to find
    % out the new mean
    newMeans(i, 1, :) = sum([colorValue(:, 1), colorValue(:, 2),...
        colorValue(:, 3)])/length(currentCluster);
    
end

end