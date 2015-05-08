function J = computeCost(X, y, theta)
    m = length(y);
    prediction = X * theta;
    squaredErrors = (prediction - y) .^ 2;
    J = (1/(2*m)) * sum(squaredErrors);
end
