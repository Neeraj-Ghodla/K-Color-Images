function MyImage = CreateKColourImage(clusters, means)
% This function is reponsible for creating the new image containing just k
% colours in it.
%
% Inputs:
%       clusters: 2D array containing the  cluster values (groups/k-means)
%       means: final mean values at which convergence was achieved
%
% Output:
%       MyImage: 3D image array containing the new image data
%
% Author: Neeraj Ghodla

% Finding out the size of the array
[rows, cols] = size(clusters);

% Preallocating the MyImage array
MyImage = zeros(rows, cols, 3);

% Looping through the rows and cols and assigning the values stored in the
% means array at specific indices to the MyImage array
for i = 1 : rows
    MyImage(i, :, 1) = means(clusters(i, :), 1, 1);
    MyImage(i, :, 2) = means(clusters(i, :), 1, 2);
    MyImage(i, :, 3) = means(clusters(i, :), 1, 3);
end

% Converting the array into unsigned 8 bit integers
MyImage = uint8(MyImage);

end