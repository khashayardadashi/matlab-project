function normal_distribution(mean, variance)

    samples = generate_normal_distribution(mean, variance);

    normal_distribution_pdf(samples, mean, variance);
end

function samples = generate_normal_distribution(mean, variance, size)
    if nargin < 3
        size = 1000;
    end
    std_dev = sqrt(variance);
    samples = mean + std_dev * randn(1, size);
end

function normal_distribution_pdf(samples, mean, variance)
    hold on;
    x = linspace(min(samples), max(samples), 100);
    p = (1 / sqrt(2 * pi * variance)) * exp(-(x - mean).^2 / (2 * variance));
    plot(x, p, 'k', 'LineWidth', 2);
    title(['pdf ~ mean = ' num2str(mean) ', variance = ' num2str(variance)]);
    xlabel('X');
    ylabel('f(x)');
    hold off;
    grid on;
    axis tight;
end
