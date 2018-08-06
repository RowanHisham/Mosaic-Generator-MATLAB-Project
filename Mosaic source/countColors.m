function nMap = countColors(grids,map)

[rows, cols] = size(grids);
nColors = size(map,1);
nMap = zeros(nColors,1);

for i=1:rows
    for j=1:cols
        gridN = rgb2ind(cell2mat(grids(i,j)),map,'nodither');
        n = gridN(1,1)+1;
        nMap(n,1)=nMap(n,1)+1;
    end
end
end