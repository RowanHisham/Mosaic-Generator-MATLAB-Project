function [imgArray] = GetGrid(image, tilesAcross, tileHeight, tileWidth)
%Work out the height, width and amount of colours in the image.
[~, imgWidth, ~] = size(image);
image = imresize(image,tilesAcross*tileWidth/imgWidth);
[imgHeight, imgWidth, ~] = size(image);

%Calculate the dimensions of the cells that we will use to break up the
%main image by calling the GetGridDimensions function.
[tilesDown, cellHeight, cellWidth] = GetGridDimensions(...
    tilesAcross, imgHeight, imgWidth, tileHeight, tileWidth);

%Initiate nested for loops that will step through the cell array "imgArray"
%and copy the corresponding cell from the main image "image"
imgArray = cell(tilesDown,tilesAcross);
for i=1:tilesDown
    for j=1:tilesAcross
        h=(1+(i-1)*cellHeight):(i*cellHeight);
        w=(1+(j-1)*cellWidth):(j*cellWidth);
        imgArray{i,j} = image(h,w,1:3);
    end
end
end

