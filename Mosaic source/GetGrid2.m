function imgArray = GetGrid2(image, tilesAcross)
[~, imgWidth, ~] = size(image);

cellWidth = ceil(imgWidth/tilesAcross);
image = imresize(image,cellWidth*tilesAcross/imgWidth);
[imgHeight, imgWidth, ~] = size(image);
cellHeight = round(imgHeight/imgWidth*cellWidth);
tilesDown = floor(imgHeight/cellHeight);
imgArray=cell(tilesDown,tilesAcross);
for i=1:tilesDown
    for j=1:tilesAcross
        h=(1+(i-1)*cellHeight):(i*cellHeight);
        w=(1+(j-1)*cellWidth):(j*cellWidth);
        imgArray{i,j} = image(h,w,1:3);
    end
end
end

