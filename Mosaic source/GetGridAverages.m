function [array] = GetGridAverages(cells)
%GetGridAverages Computes the average RGB values for each cell in a cell
%array.
%   Input:
%       cells = A cell array containing our main image split up into cells.
%   Output:
%       array = A 3 dimensional array that contains the average RGB values
%       for each of the cells.

%Author: MAHNAC

%Calculate how many rows and how many columns exist within the cell array.
[rows, cols] = size(cells);

%Begin the for loop that will step through the cell array and create a 3
%dimensional array for every value in the cell array, containing average
%RGB values.
array = zeros(rows,cols,3);
for i=1:rows
    for j=1:cols
        [array(i,j,1),array(i,j,2),array(i,j,3)] = GetAverageRGB(cells...
            {i,j});
    end
end

end

