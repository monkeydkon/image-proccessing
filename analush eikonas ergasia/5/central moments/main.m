function [centroids] = main()
    Image = imread('car.jpg');
    figure; imshow(Image); title('Original Image');
    Image=~im2bw(Image);
    centroids = apply(Image);
    centroids

    Image = imread('car_reversed.jpg');
    Image = imresize(Image, 0.5);
    figure; imshow(Image); title('Reversed and 50% of Original');
    Image=~im2bw(Image);
    centroids=apply(Image);
    centroids

end

