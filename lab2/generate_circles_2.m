function [circles, index_number, circle_areas] = generate_circles_2(a, r_max, n_max)
    index_number = 193050;
    L1 = 0;
    circles = zeros(n_max, 3);
    
    i = 1;
    while i <= n_max
        x = rand * a;
        y = rand * a;
        r = rand * r_max;

        if x + r > a || x - r < 0 || y + r > a || y - r < 0
            continue
        end

        intersects = false;
        for j = 1:i-1
            distance_between_centers = sqrt((x - circles(j, 1))^2 + (y - circles(j, 2))^2);
            if distance_between_centers <= r + circles(j, 3)
                intersects = true;
                break;
            end
        end
        
        if ~intersects
            circles(i, :) = [x, y, r];
            i = i + 1;
        end
    end

    circle_areas = cumsum(pi * circles(:, 3).^2);
end