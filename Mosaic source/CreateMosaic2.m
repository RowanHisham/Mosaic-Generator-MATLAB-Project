function [imgMosaic, map, nMap] = CreateMosaic2(inputImage, tilesAcross, nColors)
% Divides the image into a grid
gridImages = GetGrid2(inputImage,tilesAcross);
% Changes each cell into one colour
Tiles = getTiles2(gridImages);
% Combines the cells into an image
tempImage = cell2mat(Tiles);
% Reduces the number of colours in the obtained image
[tempMosaic, map] = rgb2ind(tempImage,nColors,'nodither');
imgMosaic = ind2rgb(tempMosaic,map);
% Divides the image back into a grid
mosaicGrid = GetGrid2(imgMosaic,tilesAcross);
% Counts the number of times each colour is used
nMap = countColors(mosaicGrid,map);
end