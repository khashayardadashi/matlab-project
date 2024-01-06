function y = calculate_answers(x)
    if x >= 0
        y = exponential_function(x);
    else
        y = 0;
    end
end

function y = exponential_function(x)
    y = 1 - 0.25 * exp(-2 * x);
end
