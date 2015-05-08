function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
    m = length(y);
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        delta = (1/m) * (X' * (X * theta - y));
        theta = theta - alpha * delta;
        J_history(iter) = computeCostMulti(X, y, theta);
    end
end
