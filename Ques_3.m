clc
clear all
close all

image = imread('cameraman.tif');
[rows,columns] = size(image);
new_image = zeros(rows,columns);
median_filter = zeros(3,3);
r_next=0;
c_next=0;
for r=2:rows-1
    for c=2:columns-1
        for i=1:3
            for j=1:3
                median_filter(i,j) = image(r+r_next-1,c+c_next-1);
                c_next = c_next+1;
            end
            c_next=0;
            r_next=r_next+1;
        end
        r_next=0;
        median_filter = sort(median_filter);
        new_image(r,c) = median_filter(2,2);
    end
end
subplot(1,2,1),imshow(image),title('Original Image');
subplot(1,2,2),imshow(new_image,[]),title('With Median Filter');