function [ellipse] = transform_to_ellipse( circle )
    tform = [1 0 0;0.6 1 0;0 0 1];                              %a transformation
    tform = maketform('affine',tform);                          %create tform structure
    ellipse = imtransform(circle, tform, 'Size', size(circle)); %transform
end

