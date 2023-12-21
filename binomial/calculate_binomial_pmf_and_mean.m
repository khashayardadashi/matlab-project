function calculate_binomial_pmf_and_mean(n, p)
     
    results = zeros(1, 10000);
    for i = 1:10000
        results(i) = binomialDistribution(p, n);
    end

    Frequency = sum(results) / (n * 10000);
    binomial_mean = n*p;

    x = 1:n;
    pmf = hist(results, x) / 10000;
    stem(x, pmf, 'LineWidth', 1.5);
    title('Binomial Distribution Pmf');
    xlabel(['X ~ Binomial ( n = ' num2str(n) ', p = ' num2str(p) ')']);
    ylabel('P(X = x)');
    grid on;

     disp(['Mean of the random variable X = ' num2str(binomial_mean)]);
end

function count = binomialDistribution(p, n)
    count = 0;
    for i = 1:n
        if rand() < p
            count = count + 1;
        end
    end
end
