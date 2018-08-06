function [tilesDown, cellHeight, cellWidth] = GetGridDimensions...
    (tilesAcross, imgHeight, imgWidth, tileHeight, tileWidth)
%GetGridDimensions will return all of the data necessary to create a grid
%that best approximates the original proportions of the tile images.
%   Inputs:
%       tilesAcross = The number of tiles that will go across the image.
%       imgHeight = The height of the image to create the grid for.
%       imgWidth = The width of the image to create the grid for.
%       tileHeight = The height of the tiles that we will use.
%       tileWidth =  The width of the tiles that we will use.
%   Outputs:
%       tilesDown = The number of tiles that will go down the page.
%       cellHeight = The height of each cell on the grid.
%       cellWidth = The width of each cell on the grid.

%Author: MAHNAC

%Calculate the cellWidth then round downwards.
cellWidth = floor(imgWidth/tilesAcross);

%Calculate the cellHeight then round to the nearest whole value. By
%rounding to the nearest whole value and not downwards we preserve, to a
%closer degree, the proportions of the tiles.
cellHeight = round(cellWidth*(tileHeight/tileWidth));

%Calculate the number of tiles that will be going downwards.
tilesDown = floor(imgHeight/cellHeight);

end

