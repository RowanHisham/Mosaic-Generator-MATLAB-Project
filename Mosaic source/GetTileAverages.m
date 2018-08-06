function [avg] = GetTileAverages(tiles)
%GetTileAverages will find the average amount of red, green and blue for
%all of the tiles contained within a 1D cell array.
%   Input:
%       tiles: A 1 dimensional cell array containing a list of tiles.
%   Output:
%       avg: A 2 dimensional numerical array where each row corresponds to
%       a different tile and columns 1 through 3 represent the amount of
%       red green and blue respectively in each tile.

%Author: MAHNAC

%Initiate the loop that will loop through the "tiles" cell array and
%produce a corresponding output with average red, green and blue values in
%each row of the "avg" array.
avg = zeros(length(tiles),3);
for i=1:length(tiles)
        currentTile = tiles{i};
        [avg(i,1), avg(i,2), avg(i,3)] = GetAverageRGB(currentTile);
end
end

