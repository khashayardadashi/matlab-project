function exponential_distribution(landa_val)

    samples = generate_exponential_distribution(landa_val);

    exponential_distribution_pdf(samples, landa_val);
end

function samples = generate_exponential_distribution(landa, size)
    if nargin < 2
        size = 1000;
    end

    uniform_samples = rand(1, size);
    samples = -landa * log(1 - uniform_samples);
end

function exponential_distribution_pdf(samples, landa_value)
    x = linspace(min(samples), max(samples), 100);
    p = (1 / landa_value) * exp(-x / landa_value);
    plot(x, p, 'k', 'LineWidth', 2);
    title([' pdf ~ ( ' num2str(landa_value) ' ) ']);
    xlabel('X');
    ylabel('f(X)');
    hold off;
    grid on;
    axis tight;
end

