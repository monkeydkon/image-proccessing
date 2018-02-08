function needle
    % Sphere creation, containing 25 grids and save the values of the
    % points of the grids in 3 arrays sized n+1xn+1
    [a,b,c] = sphere(25);
    figure; surf(a,b,c);            % Drawing of the sphere
    z = [a b c];                    % Save the values of arrays in variable z
    [dx, dy] = gradient(z);         % The gradient of z is saved in dx, dy
    tilt = atan2(-dy, -dx);         % Return array tilt, same size as dx,dy
    grad = sqrt(dx.^2 + dy.^2) + eps;
    
    % Grad equals the distance of dx, dy, plus the distance eps
    slant = atan(grad);             % Slant equals the tangent of grand
    figure; needleplot(slant, tilt, 5, 2); axis('off');

end

