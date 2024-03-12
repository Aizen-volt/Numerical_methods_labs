function [numer_indeksu, Edges, I, B, A, b, r] = page_rank()    numer_indeksu = 193050;    d = 0.85;    Edges = [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 6, 6, 7, 8 ;             4, 6, 8, 3, 4, 5, 5, 6, 7, 5, 6, 4, 6, 4, 7, 6, 6];    N = 8;    I = speye(8);    B = sparse(Edges(2, :), Edges(1, :), 1);    A = spdiags((1./sum(B, 1))', 0, N, N);    b = (1-d)/N * ones(N, 1);    M = I - d*B*A;    r = M\b;end