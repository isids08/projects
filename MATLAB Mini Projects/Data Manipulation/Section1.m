%% ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com
clc, close, clear
disp('ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com') 
disp(' ')
%% Section 1 – Vector and Matrix Manipulation
disp("Section 1 – Vector and Martrix Manipulation")
disp(" ")
% Task 1.0 - Adding Headers
disp("Task 1.0 - Adding Headers")
disp(" ")
disp("Added the appropriate headers ") 
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
% Task 1.1 - Loading Matrix 
disp("Task 1.1 - Loading Matrix")
disp(" ")
MatrixP1 = load("Matrix_P1.txt"); 
disp("Matrix is loaded.")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.2 - Displaying Number of Rows and Columns
disp("Task 1.2 - Displaying Number of Rows and Columns")
disp(" ")
[nrow, ncol] = size(MatrixP1);   % stores the number of columns in ncol and number of rows in nrow.
disp("There are " + nrow + " rows and " + ncol + " columns in the matrix.")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.3 - Diplaying 5th Row
disp("Task 1.3 - Displaying 5th Row")
disp(" ")
fifth_row = num2str(MatrixP1(5,:));  %Using num2str so that I can display in sentence
disp("The values in the 5th row are " + fifth_row)
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.4 - Displaying Value in 3rd Row, Last Column
disp("Task 1.4 - Displaying Value in 3rd Row, Last Column")
disp(" ")
disp("The value in 3rd Row, Last Column is " + MatrixP1(3,end) + ".")  
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.5 - Displaying Corner Values 
disp("Task 1.5 - Displaying Corner Values")
disp(" ")
CornerMatrix = [MatrixP1(1,1),MatrixP1(1,end);MatrixP1(end,1),MatrixP1(end,end)];
disp("The values in the corners are:")
disp(CornerMatrix)
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.6 - Last Value in Odd Columns
disp("Task 1.6 - Last Value in Odd Columns")
disp(" ")
disp("The last value in odd columns ")
disp(MatrixP1(end,[1:2:ncol]))  % the vector contains all odd numbers that are within the bounds of the number of columns
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.7 - Last Value in Even Columns of Transposed Matrix
TransposedMatrix = MatrixP1'; % Transposing the matrix
disp("Task 1.7 - Last Value in Even Columns of Transposed Matrix")
disp(" ")
disp("The last value in even columns of the transposed matrix is ")
disp(TransposedMatrix(end,[2:2:ncol]))  % the vector contains all even numbers that are within the bounds of the number of columns
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.8 - Matrix Min / Max Values
disp("Task 1.8 -  Matrix Min / Max Values")
disp(" ")
disp("The maximum value in the matrix is " + max(max(MatrixP1)) + ".")  % one max gives the max of each column, the other gives the absolute max
disp("The minimum value in the matrix is " + min(min(MatrixP1)) + ".")  % one min gives the max of each column, the other gives the absolute min
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.9 - Column of Min Value
disp("Task 1.9 -  Column of Min Value")
disp(" ")
[minValue, minIndex] = min(min(MatrixP1));  
disp("The miniumum value of the matrix is in column " + minIndex + ".")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.10 - Row of Max Value
disp("Task 1.10 -  Row of Max Value")
disp(" ")
[maxValue, maxIndex] = max(max(MatrixP1'));
disp("The maxiumum value of the matrix is in row " + maxIndex + ".")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.11 - Center Values
disp("Task 1.11 -  Center Values")
disp(" ")
CenterRowIndex = round(nrow/2); % rounds to a whole number
disp("The Center Values are " + MatrixP1(CenterRowIndex, ncol/2) + ", " + MatrixP1(CenterRowIndex, ncol/2 + 1) + ".")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.12 - Minimum Row Sum
disp("Task 1.12 -  Minimum Row Sum")
disp(" ")
[MinSumValue, MinSumIndex] = min(sum(TransposedMatrix));
disp("The row with the minimum sum is row " + MinSumIndex + ".")
disp("Press any key to continue");
disp("---------------------------------------------------")
pause
% Task 1.13 - Small_ Matrix
disp("Task 1.13 -  Small_Matrix")
disp(" ")
Small_Matrix = MatrixP1(1:end-1,1:end-1)