image = imread('car.jpg');          % Read the image

image = im2double(image);           % Convert the image to double
image = rgb2gray(image);            % and then to grayscale

edge_detection(image);              % Call the edge detection 
                                    % function, using the image
                                    % as an argument.