% Data points
x = [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
y = [0.7829 0.8052 0.5753 0.5201 0.3783 0.2923 0.1695 0.0842 0.0415 0.0090 0];

% Polynomial fitting
p1 = polyfit(x, y, 1);  % First order
p2 = polyfit(x, y, 2);  % Second order
p4 = polyfit(x, y, 4);  % Fourth order
p8 = polyfit(x, y, 8);  % Eighth order

% Generate fitted values for plotting
x_fit = linspace(0, 1, 100); % Generate 100 points between 0 and 1
y1_fit = polyval(p1, x_fit); % First order
y2_fit = polyval(p2, x_fit); % Second order
y4_fit = polyval(p4, x_fit); % Fourth order
y8_fit = polyval(p8, x_fit); % Eighth order

% Plotting the results
figure;
plot(x, y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points'); hold on;
plot(x_fit, y1_fit, 'b-', 'LineWidth', 2, 'DisplayName', '1st Order Fit');
plot(x_fit, y2_fit, 'g-', 'LineWidth', 2, 'DisplayName', '2nd Order Fit');
plot(x_fit, y4_fit, 'm-', 'LineWidth', 2, 'DisplayName', '4th Order Fit');
plot(x_fit, y8_fit, 'k-', 'LineWidth', 2, 'DisplayName', '8th Order Fit');
xlabel('x');
ylabel('y');
legend('show');
title('Polynomial Fits of Orders 1, 2, 4, and 8');
grid on;
