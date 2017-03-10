close all
clear all
clc

read_image = imread('tissue.png');
red = read_image(:,:,1);
green = read_image(:,:,2);
blue = read_image(:,:,3);

subplot(2,2,1), imshow(read_image), title('Orignal Image');
subplot(2,2,2), imshow(red), title('Red Image');
subplot(2,2,3), imshow(green), title('Green Image');
subplot(2,2,4), imshow(blue), title('Blue Image');