function calculate_geometric_pmf_and_mean(n, p)

    pmfs = (1-p).^(0:n-1) * p;
    expected_value = sum(pmfs);

    figure;
    stem(pmfs ,'filled');
    xlabel(['X ~ Geometric(n=' num2str(n) ', p=' num2str(p) ')']);
    ylabel('P[X=x]');
    title('Geometric Distribution Pmf');
    disp(['Mean of the random variable X = ' num2str(expected_value)]);

end
