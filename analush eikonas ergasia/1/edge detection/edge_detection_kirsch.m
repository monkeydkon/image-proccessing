function [ kirsch_img ] = edge_detection_kirsch( image )
    % Create the 8 arrays of Kirsch algorithm
    N = [-3 -3 5; -3 0 5; -3 -3 5];
    W = [-3 5 5; -3 0 5; -3 -3 -3];
    S = [5 5 5; -3 0 -3; -3 -3 -3];
    E = [5 5 -3; 5 0 -3; -3 -3 -3];
    NW = [5 -3 -3; 5 0 -3; 5 -3 -3];
    SW = [-3 -3 -3; 5 0 -3; 5 5 -3];
    SE = [-3 -3 -3; -3 0 -3; 5 5 5];
    NE = [-3 -3 5; -3 0 -3; -3 5 5];
    
    
    % Convolution of image value and array
    C1 = conv2 (image, N);
    C2 = conv2 (image, W);
    C3 = conv2 (image, S);
    C4 = conv2 (image, E);
    C5 = conv2 (image, NW);
    C6 = conv2 (image, SW);
    C7 = conv2 (image, SE);
    C8 = conv2 (image, NE);
    
    max_temp = max(C1, C2);
    max_temp = max(max_temp, C3);
    max_temp = max(max_temp, C4);
    max_temp = max(max_temp, C5);
    max_temp = max(max_temp, C6);
    max_temp = max(max_temp, C7);
    max_temp = max(max_temp, C8);
    
    kirsch_img = max_temp;
end

