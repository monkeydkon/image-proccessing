function needleplot(slant, tilt, length, space)
    % The following variables start from the first element, and increase by value 
    % equal to "space", so that the needles, that are separated by "space", appear
    s_slant = slant(1:space:end, 1:space:end);  % Elements of slant
    s_tilt = tilt(1:space:end, 1:space:end);    % Elements of tilt
    [s_rows, s_cols] = size(s_slant);
    
    % The variables are given the values of spaces' magnitude 
    % of slant and display of each needle on xy layer

    projlen = length * sin(s_slant);
    dx = projlen.*cos(s_tilt);
    dy = projlen.*sin(s_tilt);
    clf
    
    % Drawing of the needles
    for r = 1 : s_rows
        for c = 1 : s_cols
            x = (c-1) * space + 1;
            y = (r-1) * space + 1;
            plot(x, y, 'r.'); hold on
            line([x x+dx(r,c)], [y y+dy(r,c)], 'color', [0 1 1], 'linewidth', length);
        end
    end
    axis('equal')
    axis('off')
    
end

