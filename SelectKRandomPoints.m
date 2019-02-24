function points = SelectKRandomPoints(ImageArray3D, k)
% This function is responsible for generating randomly selected k pixel
% values.
%
% Inputs:
%       ImageArray3D: 3D array for an image
%       k: Number of points to select (like 3 or 4)
%
% Output:
%       points: 2D array with k rows and 2 cols
%
% Author: Neeraj Ghodla

% Preallocating the points array
points = zeros(k, 2);

% Find the size of the 3DImageArray
[rows, cols, ~] = size(ImageArray3D);

% Selecting k row points and k column points
if k <= rows && k <= cols
    % randomly selecting k points between 1:rows and 1:cols
    RandomRows = randperm(rows, k);
    RandomCols = randperm(cols, k);
    
    % checking if the selected points are equal or not
    if isequal(RandomRows, RandomCols)
        % filp the RandomCols array to make both RandomRows and RandomCols
        % unequal
        RandomCols = fliplr(RandomCols);
    end
    
    % storing the RandomRows in col 1 and RandomCols in col 2 of the points
    % array
    points(:, 1) = RandomRows(1, :);
    points(:, 2) = RandomCols(1, :);
    
% find the different combinations of numbers from 1:rows and 1:cols in
% sets of 2
else
    % RandomRows and RandomCols are a rectangular grid of numbers from
    % 1:rows and 1:cols respectively
    [RandomRows,RandomCols] = meshgrid(1:rows, 1:cols);
    
    % concatenate the transposed RandomRows and transposed RandomCols
    % across the 2nd dimension
    RandomRowsandCols=cat(2,RandomRows',RandomCols');
    
    % reshape the RandomRowsandCols so that it has 2 cols and
    % store those points is the point array
    point=reshape(RandomRowsandCols,[],2);

    % assign all the points from 1:k in all columns to the points array
    points(:, :) = point(1:k, :);
end

end