function exponential_distribution(scale_val)

    samples = generate_exponential_distribution(scale_val);

    exponential_distribution_pdf(samples, scale_val);
end

function samples = generate_exponential_distribution(scale, size)
    if nargin < 2
        size = 1000;
    end

    uniform_samples = rand(1, size);
    samples = -scale * log(1 - uniform_samples);
end

function exponential_distribution_pdf(samples, scale)
    x = linspace(min(samples), max(samples), 100);
    p = (1 / scale) * exp(-x / scale);
    plot(x, p, 'k', 'LineWidth', 2);
    title([' pdf ~ ( ' num2str(scale) ' ) ']);
    xlabel('X');
    ylabel('f(X)');
    hold off;
    grid on;
    axis tight;
end

