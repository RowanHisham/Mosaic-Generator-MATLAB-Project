function [tiles] = getTiles2(grid)
[rows, cols] = size(grid);
tiles = cell(rows,cols);
for i=1:rows
    for j=1:cols
        [tempTile, map]=rgb2ind(grid{i,j},1,'nodither');
        tiles{i,j}=ind2rgb(tempTile, map);
    end
end
end

