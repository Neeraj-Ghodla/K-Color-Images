function [clusters, newMeans] = KMeansRGB(ImageArray3D, seedMeans, maxIterations)
% This function is responsible for partioning an image into k clusters
% using the k-means clustering algorithm.
%
%   Inputs:
%        ImageArray3D: 3D image array
%        newmean: 3x1x3 array
%        maxIterations: max number of times to run the loop
%
%   Outputs:
%         clusters: new updated clusters
%         means: new updated means
%
%   Author: Neeraj Ghodla


% finding out the number of rows in the seedMeans array
[k, ~, ~] = size(seedMeans);

% Looping through all the iterations
for i = 1 : maxIterations
    % Calling the functions
    clusters = AssignToClusters(ImageArray3D, seedMeans);
    newMeans = UpdateMeans(ImageArray3D, k, clusters);
    
    % Displaying the number of iterations
    disp(['Iteration ', num2str(i)])
    
    % If the current means are equal to the previous means then that means
    % congergence has been achieved and the break statement breaks the for
    % loop
    if isequal(newMeans, seedMeans)
        break;
    % if the current means is not equal to the previous means then
    % set the previous mean equal to the current means
    else
        seedMeans = newMeans;
    end
end

if i == maxIterations
    fprintf('\n%s\n',...
        'Maximum number of iterations reached before convergence was achieved.');
end

end