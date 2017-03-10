clc
clear all
close all

image = double(imread('cameraman.tif'));
[row,column] = size(image);
counter = zeros(1,256);
for r=1:row
    for c=1:column
        pixel=image(r,c);
        counter(1,pixel) = counter(1,pixel)+1;
    end  
end
plot(counter);










