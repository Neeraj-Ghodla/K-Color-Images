function clusters = AssignToClusters(ImageArray3D, seedMeans)
% This function is responsible for assigning each pixel in an image to a
% cluster based on which mean that pixel is closest to.
%
% Inputs:
%       ImageArray3D: A m-n-3 3D image array containing the RGB values
%       seedMeans: A k-1-3 array containing the RGB value of each seed
%       mean
%
% Outputs:
%       clusters: A m-n 2D array containing the cluster number of each
%       pixel in the image
%
% Author: Neeraj Ghodla

% Finding out the size of the arrays
[rows, cols, ~] = size(ImageArray3D);
[k, ~, ~] = size(seedMeans);

% Preallocating the arrays
clusters = zeros(rows, cols);
distanceR = zeros(rows, cols, k);
distanceG = zeros(rows, cols, k);
distanceB = zeros(rows, cols, k);

% Breaking the image into its R, G, B components
R = ImageArray3D(:, :, 1);
G = ImageArray3D(:, :, 2);
B = ImageArray3D(:, :, 3);

% Lopping through k and finding out the squared distance of each value of 
% seedMeans array from all the values of R, G, and B
for i = 1 : k

    distanceR(:, :, i) = (seedMeans(i, 1) - R).^2;
    distanceG(:, :, i) = (seedMeans(i, 2) - G).^2;
    distanceB(:, :, i) = (seedMeans(i, 3) - B).^2;
end

% Adding all the R, G, and B distances
squaredDistance(:, :, :) = distanceR(:, :, :)...
    + distanceG(:, :, :) + distanceB(:, :, :);

% Assigning each pixel to its cluster
if k == 1
    % If k is 1 then there is only 1 clusters and all the pixels belong
    % to this cluster only
    clusters(:, :) = 1;
else
    % Finding out the location of the min value across the 3rd dimension
    % in the squaredDistance array
    [~, clusters] = min(squaredDistance, [], 3);
    
    % Assigning each pixel to its cluster using linear indexing
%     clusters(:) = loc(:);
end

end