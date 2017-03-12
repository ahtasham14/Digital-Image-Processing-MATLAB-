image = imread('cameraman.tif');
[rows,columns] = size(image);
counter = zeros(1,256);
for r=1: rows
    for c=1: columns
        pixel = image(r,c);
        counter (1, pixel) = counter(1,pixel) +1;
    end
end

total_size = rows * columns;
pdf = zeros(1,256);
%pdf(1:1,1:256) = counter(1:1,1:256)./total_size;
pdf(:,:) = counter(:,:)./total_size;
cdf = zeros(1,256);
cdf(1,1) = pdf(1,1);
for i=2: rows
    cdf(1,i) = cdf(1,i-1)+pdf(1,i);  
end
new_image = cdf(image);
subplot(1,2,1),imshow(image),title('Orignal Picture');
subplot(1,2,2),imshow(new_image), title('Histogram Equilization Picture');