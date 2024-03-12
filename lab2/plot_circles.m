function plot_circles(circles, a)
    axis equal;
    axis([0 a 0 a]);
    hold on;

    for i = 1:size(circles, 1)
        plot_circle(circles(i, 3), circles(i, 1), circles(i, 2));
        pause(0.1);
    end
    
    hold off;
end