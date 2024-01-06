function dcf_graph()
    x_values = linspace(-4, 8, 1000);
    y_values = piecewise_function(x_values);

    plot(x_values, y_values, 'LineWidth',1.5);
    title('CDF');
    xlabel('X');
    ylabel('F(X)');
    grid on;
    axis([-4, 8, -0.2, 1.2]); 
    hold off;
end

function y = exponential_Function(x)
    y = 1 - 0.25 * exp(-2 * x);
end

function y = piecewise_function(x)
    y = zeros(size(x));
    y(x <= 0) = 0;
    y(x > 0) = exponential_Function(x(x > 0));
end
