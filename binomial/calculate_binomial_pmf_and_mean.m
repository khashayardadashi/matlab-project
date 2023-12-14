function calculate_binomial_pmf_and_mean(n, p)

    values_for_k = 0:n;
    probabilities = zeros(1, n+1);

    for k = values_for_k
        probabilities(k + 1) = nchoosek(n, k) * p^k * (1 - p)^(n - k);
    end

    mean_val = sum(values_for_k .* probabilities);

    figure;
    stem(values_for_k, probabilities, 'b' ,'filled');
    xlabel(['X ~ Binomial ( n = ' num2str(n) ', p = ' num2str(p) ')']);
    ylabel('P(X = x)');
    title('Binomial Distribution Pmf');
    grid on;

    disp(['Mean of the random variable X = ' num2str(mean_val)]);
end
