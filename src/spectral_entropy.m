function H = spectral_entropy(P, ~)
    % The ~ ignores any extra argument passed
    P = P(:);
    P = P / sum(P);
    p_nonzero = P(P > 0);
    H = -sum(p_nonzero .* log2(p_nonzero)) / log2(length(P));
end