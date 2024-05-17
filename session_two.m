%Question 1.1
B = [2:2:14; 15:5:45; 54:3:72];
disp(B);

%Question 1.2
[m, n] = size(B);
fprintf('The size of the matrix B is %d rows by %d columns.\n', m, n);

%Question 1.3
element1 = B(3, 5);
fprintf('The number 66 accessed using row and column indices is: %d\n', element1);
element2 = B(15);
fprintf('The number 66 accessed using single linear index B(15) is: %d\n', element2);

%Question 1.4
B_rotated = B(end:-1:1, end:-1:1);
disp('The matrix rotated by 180 degrees is:');
disp(B_rotated);

%Question 1.5
B_flipped_rows = B(end:-1:1, :);  
pivot_col = 3;
B_rotated = B_flipped_rows(:, [3:-1:1, 4:end, 3:-1:4]);  
disp('Matrix rotated around the third column by 180 degrees:');
disp(B_rotated);

%Question 1.6
matrix = B_rotated;
[m, n] = size(matrix);
fprintf('The size of the matrix is %d rows by %d columns.\n', m, n);
dimensions_matrix = ndims(matrix);
fprintf('The number of dimensions of the matrix is %d.\n', dimensions_matrix);

%Question 1.7
column_averages = mean(B_rotated); 
disp('Average of numbers in each column:');
disp(column_averages);

%Question 1.8
average_all_numbers = mean(matrix(:));
disp('average_all_numbers:');
disp(average_all_numbers);

%Question 2
c = [1, 1.1, 1.4, 0.3];
x = 0:0.01:10;

y1 = (1 - x.^2) .^ c(1);
y2 = (1 - x.^2) .^ c(2);
y3 = (1 - x.^2) .^ c(3);
y4 = (1 - x.^2) .^ c(4);

figure;
hold on;

plot(x, y1, 'LineWidth', 1.5, 'Color', 'b'); 
plot(x, y2, 'LineWidth', 1.5, 'LineStyle', '--', 'Color', 'r'); 
plot(x, y3, 'LineWidth', 1.5, 'LineStyle', ':', 'Color', 'g'); 
plot(x, y4, 'LineWidth', 1.5, 'LineStyle', '-.', 'Color', 'm'); 

xlabel('x');
ylabel('y');
title('Graphs of y = (1 - x^2)^c for different c');
legend('c = 1', 'c = 1.1', 'c = 1.4', 'c = 0.3', 'Location', 'best');
grid on;

hold off;

%Question 3
p = [true; true; false; false];
q = [true; false; true; false];
not_p = ~p;
not_p_and_q = ~p & q;
not_not_p_and_q = ~not_p_and_q;
T = table(p, q, not_p, not_p_and_q, not_not_p_and_q, ...
    'VariableNames', {'p', 'q', '~p', '~p ^ q', '~(~p ^ q)'});
% Display the table
disp('Truth Table:');
disp(T);
%OR
p = [true, true, false, false];
q = [true, false, true, false];
not_p = ~p;
disp(not_p);
not_p_and_q = not_p & q;
disp(not_p_and_q );
not_not_p_and_q = ~not_p_and_q;
disp(not_not_p_and_q);
