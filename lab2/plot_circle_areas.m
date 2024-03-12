function plot_circle_areas(circle_areas)
    figure;
    plot(circle_areas);
    xlabel('Number of Circles');
    ylabel('Cumulative Circle Areas');
    title('Cumulative Circle Areas vs. Number of Circles');
    grid on;
    % print -dpng zadanie3.png 
end
