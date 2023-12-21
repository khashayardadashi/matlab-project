function calculate_geometric_pmf_and_mean(n, p)

    n = round(n);
    results = zeros(1, n);

    for i = 1:n
        trialsUntilSuccess = 1;
        while rand() > p
            trialsUntilSuccess = trialsUntilSuccess + 1;
        end
        results(i) = trialsUntilSuccess;
    end

    % Plot the PMF
    counts = hist(results, 1:max(results));
    pmf = counts / n;

    figure;
    stem(1:max(results), pmf, 'filled');
    title('Geometric Distribution Pmf');
    xlabel(['X ~ Geometric(n=' num2str(n) ', p=' num2str(p) ')']);
    ylabel('P[X=x]');

    meanValue = mean(results);
    disp(['Mean of the random variable X = ' num2str(meanValue)]);
end
