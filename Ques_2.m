clc
close all
clear all

image = imread('cameraman.tif');
[row,columns] = size(image);

three_three = ones(3,3)/9;
five_five = ones(5,5)/25;

sum=0;
r_next=0;
c_next=0;
new_image = zeros(row,columns);
for r=2:row-1
    for c=2:columns-1
        for i=1:3
            for j=1:3
                sum = sum + image(r+r_next-1,c+c_next-1)*three_three(i,j);
                c_next=c_next+1;
            end
            c_next=0;
            r_next=r_next+1;
        end
        r_next=0;
        new_image(r,c) = sum;
        sum=0;
    end
end

sum=0;
r_next=0;
c_next=0;
img_new1 = zeros(row,columns);
for r=3:row-2
    for c=3:columns-2
        
        for i=1:5
            for j=1:5
                sum = sum + image(r+r_next-2,c+c_next-2)*five_five(i,j);
                c_next=c_next+1;
            end
            c_next=0;
            r_next=r_next+1;
        end
        r_next=0;
        img_new1(r,c) = sum;
        sum=0;
    end
end
subplot(1,3,1),imshow(image),title('Original Image');
subplot(1,3,2),imshow(new_image,[]),title('3 by 3 Filter');
subplot(1,3,3),imshow(img_new1,[]),title('5 by 5 Filter');


