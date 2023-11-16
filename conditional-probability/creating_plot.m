function plot_result=creating_plot(pSending1, plot_color, i, j)

    pError = 0.1:0.1:1;
    
    conditional_probabilities = arrayfun(@(error) calculate_probability(pSending1, error, i, j), pError);

    plot_result=plot(pError, conditional_probabilities, 'o-', 'color', plot_color);

    legend({'p = 0.1', 'p = 0.5', 'p = 0.9'});
    xlabel('e');
    ylabel('Conditional Probability');
end