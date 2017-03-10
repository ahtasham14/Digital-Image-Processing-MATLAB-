clear all
close all
clc
circle  = zeros(300,300);
circle(:,:) = 255;
for x =1 :300
    for y =1 :300
        r = (x-150)*(x-150) + (y-150)*(y-150);
        r = sqrt(r);
        if(r<=100)
        circle(x,y) = 0;
        end
    end
end
imshow(circle);
