function [r, g, b] = GetAverageRGB(img)
%GetAverageRGB will find the average amount of red, green and blue in an
%image.
%   Input:
%       img = A 3D array containing an RGB image.
%   Output:
%       r = The average amount of red in the image supplied.
%       g = The average amount of green in the image supplied.
%       b = The average amount of blue in the image supplied.

%Author: MAHNAC

%Calculate the number of rows, columns and colours in the image supplied to
%determine how large the image is.
[rows, cols, ~] = size(img);

%Initialise the counting variables that we will use in the following loop.
rTotal = 0;
gTotal = 0;
bTotal = 0;

%Loop through all of the rows and columns in the image supplied and sum the
%total red, green and blue values.
for i=1:rows
    for j=1:cols
        rTotal = rTotal + double(img(i,j,1));
        gTotal = gTotal + double(img(i,j,2));
        bTotal = bTotal + double(img(i,j,3));
    end
end

%Calculate the average amount of red, green and blue across all
%pixels in the image.
r = round(rTotal/(rows*cols));
g = round(gTotal/(rows*cols));
b = round(bTotal/(rows*cols));

end

