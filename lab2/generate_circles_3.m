function [circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles_3(a, r_max, n_max)
    index_number = 193050;
    L1 = 0;
    circles = zeros(n_max, 3);
    rand_counts = zeros(n_max, 1);

    i = 1;
    count = 0;
    while i <= n_max
        count = count + 1;

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
            rand_counts(i) = count;
            count = 0;
            i = i + 1;
        else
            count = count + 1;
        end
    end

    circle_areas = cumsum(pi * circles(:, 3).^2);

    counts_mean = zeros(n_max, 1);
    counts_mean(1) = rand_counts(1);
    for i = 2:n_max
        counts_mean(i) = sum(rand_counts(1:i)) / i;
    end
end