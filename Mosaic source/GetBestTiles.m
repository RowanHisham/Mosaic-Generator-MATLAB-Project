function [tileIndex] = GetBestTiles(gridAverages, tile)
%GetBestTile will return the best tiles to use to fill the grids that have
%been created over our original image.
%   Inputs:
%       gridAverages = A 3 dimensional array that contains the average RGB
%       values for each of the cells that have been created over the
%       original image.
%       tile = A 2 dimensional numerical array where each row corresponds 
%       to the average red, green and blue values for a tile.
%   Output:
%       tileIndex = The index number of the tile that should be used in the
%       place of the grid cell.

%Author: MAHNAC

%Calculate the number of rows and the number of columns in both the grid
%and the tile inputs to the function.
[rowsGrid, colsGrid, ~] = size(gridAverages);
[rowsTile, ~] = size(tile);

tileIndex = zeros(rowsGrid,colsGrid);
mTemp = zeros(rowsTile,1);
%Initialise the loop through the rows and columns of the grid.
for i=1:rowsGrid
    for j=1:colsGrid
        %Find the red, green and blue values for each of the tiles on
        %the grid.
        rSub = gridAverages(i,j,1);
        gSub = gridAverages(i,j,2);
        bSub = gridAverages(i,j,3);
        
        %Loop through the rows of a tile to find the average red, green and
        %blue values.
        for k=1:rowsTile
            %Apply the supplied algorithm (written by Peter Bier) to a 
            %temporary variable mTemp.
            mTemp(k) = abs(tile(k,1)-rSub) + abs(tile(k,2)-gSub) + ...
                abs(tile(k,3)-bSub);
        end
        %Extract the lowest index value of the minimum value for mTemp and
        %apply it to the correct position in the tileIndex array.
        [~,tileIndex(i,j)] = min(mTemp);
    end
end
end

