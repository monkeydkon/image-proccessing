function [circle] = draw_circle ( size, radius )
    for i = 1 : size             % The image's dimensions are
        for j = 1 : size         % equal to variable "size"
            D  = sqrt((size/2 - i) ^ 2 + (size/2 - j) ^ 2);	% Distance from center, radius
            if (D < radius)                                
                circle(i,j,:) = 1;                          % Inside the circle
            else
                circle(i,j,:) = 0;                          % Outside the circle
            end
        end
    end
end

