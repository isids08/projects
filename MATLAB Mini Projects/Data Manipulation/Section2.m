%% ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com
clc, close, clear
disp('ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com') 
disp(' ')
% Section 2 – Optimization
disp("Section 2 – Optimization")
disp(" ")

%% Task 0 - Adding Headers
disp("Task 0 - Adding Headers")
disp(" ")
disp("Added the appropriate headers ") 
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
disp(" ")

%% Task 1 - Maximizing Profit
disp("Task 1 - Maximizing Profit")
disp(" ")
%STEP 1 DEFINE THE PROBLEM
            
% We are to maximize the total profit in the fundraiser given a
% the minimum number of t-shirts sold and the profit per shirt
% for the minimal sales.
            
%STEP 2 COLLECT INFORMATION
            
%Inputs
MinShirt = input("Minimum Number of T-Shirts to sell?  ");
PPS_MinSales = input("Profit per shirt for minimum sales?  ");
x = 0:1:20;

%STEP 3 GENERATE A SOLUTION
NumberOfShirtsSold = MinShirt + 20.*x; %Equation I
ProfitPerShirt = PPS_MinSales - .5.*x; %Equation II
TotalProfit = NumberOfShirtsSold.*ProfitPerShirt; %Equation III

%STEP 4 REFINE AND IMPLEMENT
            
[MaxProfit, index] = max(TotalProfit); %The Maximum Profit          
fprintf("You will have to sell %0.2f shirts at $%0.2f per shirt for the max profit of $%0.2f. \n", NumberOfShirtsSold(index), MaxProfit/NumberOfShirtsSold(index), MaxProfit)

%STEP 5 VERIFY AND TEST

figure(100)
plot(NumberOfShirtsSold, TotalProfit)
hold("on")
xlabel("Number of Shirts Sold (N) [Shirts]")
ylabel("Total Profit [T] ($)")
title("Total Profit vs Number of Shirts Sold")
plot(NumberOfShirtsSold(index), MaxProfit, 'mo', "LineWidth", 6)
legend("profit per shirt", "max profit")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
disp(" ")

%% Task 2

%Task 2.1 - Meeting Goal
disp("Task 2.1 - Meeting Goal")
disp(" ")
ShirtsBelowMinimum = 0; % if the profit goal is met, then you will have sold all your t-shirts
y = [-.02,0,62]; % y = -0.02x^2 + 62
disp("There are " + round(polyval(y,ShirtsBelowMinimum)) + " students going on the trip.")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
disp(" ")

% Task 2.2.a - T-Shirts Sold
disp("Task 2.2.a - T-Shirts Sold")
disp(" ")
nStudents = input("How many paying students are going on the trip? ");
x = [0:.01:60];
y1 = polyval(y,x); 
[minXvalue,index_X_value] = min(abs(y1(find(abs(y1 - nStudents) < .01)) - nStudents));
FindingMinArray = x(find(abs(y1 - nStudents) < .01));
MinX1 = FindingMinArray(index_X_value); % Finding the x that most closely approximates the given y value (nStudents).
ShirtsBelowMinShirt = MinShirt - MinX1; % Subtract the shirts below minimum from the minimum shirts
disp("You would have to sell " + round(ShirtsBelowMinShirt) + " shirts if there are " + nStudents + " students going on the trip.")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
disp(" ")

% Task 2.2.b - Money Short
disp("Task 2.2.b - Money Short")
disp(" ")
fprintf("For " + nStudents + " paying students, the fundraiser was $%0.2f short of the fundraiser goal\n", (MinShirt*PPS_MinSales-ShirtsBelowMinShirt*PPS_MinSales))
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
disp(" ")

% Task 2.3.c - Distributed Cost
disp("Task 2.2.c - Distributed Cost ")
disp(" ")
fprintf("For " + nStudents + " paying students, each student would have to contribute $%0.2f to go on the trip\n", ((MinShirt*PPS_MinSales-ShirtsBelowMinShirt*PPS_MinSales)/nStudents))

% Task 2.3 - Graph
figure(200)
ShirtsSold = MinShirt-x;
hold("on")
plot(y1,ShirtsSold)
plot(nStudents,ShirtsBelowMinShirt,'b*')
xlabel("Number of Students going on the trip [N]")
ylabel("Nummber of Shirts Sold [S]")
title("Shirts sold vs. Students going on the trip")
legend("Shirts vs Students", "Students on trip")