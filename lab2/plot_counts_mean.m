function plot_counts_mean(counts_mean)
    figure;
    plot(counts_mean);
    xlabel('Number of Circles');
    ylabel('Mean Random Counts');
    title('Mean Random Counts vs. Number of Circles');
    grid on;
    print -dpng zadanie5.png 
end