clear all
close all
format compact

n_max = 200;
a = 20;
r_max = 5;

[circles, index_number] = generate_circles(a, r_max, n_max);
plot_circles(circles, a); 

[circles, index_number, circle_areas] = generate_circles_2(a, r_max, n_max);
plot_circle_areas(circle_areas);

[circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles_3(a, r_max, n_max);
plot_counts_mean(counts_mean);

[numer_indeksu, Edges, I, B, A, b, r] = page_rank();
plot_PageRank(r);

% print -dpng zadanie1.png 