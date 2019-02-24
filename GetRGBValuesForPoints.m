function seedMeans = GetRGBValuesForPoints(ImageArray3D, points)
% This function is responsible for returning the R, G, B values for an
% list of pixel positions.
%
% Inputs:
%       ImageArray3D: Takes in a 3D image array
%       PointsArray2D: Takes in a 2D array of size k rows and 2 cols which
%       contains the pixel position
%
% Output:
%       seedMeans: A 3D array of k rows, 1 col and 3 layers and contains
%       the R, G, B values extracted from each pixel position
%
% Author: Neeraj Ghodla

% Finding out the number of rows in the points array
[rows, ~] = size(points);

% Preallocating the seedMeans array
seedMeans = zeros(rows, 1, 3);

% Looping through all the rows and assigning the colour value stored in the
% ImageArray3D to the seedMeans array
for i = 1 : rows
    % Storing the values at ith position of the ImageArray3D into the
    % seedMeans array for all the layers in the ImageArray3D
    seedMeans(i, 1, 1) = ImageArray3D(points(i, 1), points(i, 2), 1);
    seedMeans(i, 1, 2) = ImageArray3D(points(i, 1), points(i, 2), 2);
    seedMeans(i, 1, 3) = ImageArray3D(points(i, 1), points(i, 2), 3);
end

end