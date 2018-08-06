function [Mosaic] = CreateMosaic(M, tilesAcross, tiles)
% Figure out the average RGB values for all tiles in the library
tileAverages = GetTileAverages(tiles);
% Determine tile size by extracting the first tile
[tileHeight,tileWidth,~] = size(tiles{1});
% Construct a grid of images 
gridImages = GetGrid(M,tilesAcross,tileHeight,tileWidth);
% Calculate array of averages for grid,
% i.e. average colour values for each cell (subimage) in the grid
gridAverages = GetGridAverages(gridImages);
% Find best tile for each image, based on the average RGB values 
bestTiles = GetBestTiles(gridAverages,tileAverages);
% Assemble complete mosaic from the array of bestTiles 
Mosaic = AssembleMosaic(bestTiles,tiles);
end
    