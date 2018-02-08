function edge_detection( image )   
    % Functions of the algorithms
    img1 = edge(image, 'Roberts');
    img2 = edge(image, 'Sobel');
    img3 = edge(image, 'Prewitt');
    [img4] = edge_detection_kirsch(image);  % The result image of the
                                            % Kirsch function is saved
                                            % in variable "img4".
    
    % Presentation of the results of the algorithms
    figure; imshow(img1); title('Roberts');
    figure; imshow(img2); title('Sobel');
    figure; imshow(img3); title('Prewitt');    
    figure; imshow(img4); title('Kirsch');
    
end

