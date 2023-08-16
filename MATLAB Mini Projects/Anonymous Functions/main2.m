%% ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com
clc, clear, close all
disp('ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com ') 
disp("")
%% Section 2 – Anonymous Functions
disp("Section 2 – Anonymous Functions") 
disp("--------------------------------------------- ")
disp(" ")

% Task 2.0 – Adding Headers 

disp("Task 2.0 – Adding Headers") 
disp(" ")  
disp("Headers Added")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.1 – Creating Anonymous Function

disp("Task 2.1 – Creating Anonymous Function") 
disp(" ") 
y = @(t) -t.^2 + 4;
disp("Anonymous function created.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.2 – Plotting Graph

disp("Task 2.2 – Plotting Graph") 
disp(" ") 
m = y(0:0.1:2);
figure(202)
plot(0:0.1:2,m)
title("Path of Ball")
xlabel('Time (t) [s]')
ylabel('Height (h) [m]')
axis([0 3 0 5])
disp("The plot is displayed in figure 202")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.3 – Position at 1 second

disp("Task 2.3 – Position at 1 second") 
disp(" ") 
disp("The position of the ball after 1 second is " + y(1) + " meters above the ground.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.4 – Reimann Sums

disp("Task 2.4 – Reimann Sums") 
disp(" ") 
eight_sum = 0;
twelve_sum = 0;
four_sum = 0;
sixteen_sum = 0;

for i = [1/4:1/2:2]
    four_sum = four_sum + y(i)*1/2;
end
for i = [1/8:1/4:2]
    eight_sum = eight_sum + y(i)*1/4;
end
for i = [1/12:1/6:2]
    twelve_sum = twelve_sum + y(i)*1/6;
end
for i = [1/16:1/8:2]
    sixteen_sum = sixteen_sum + y(i)*1/8;
end

fprintf("The Reimann sum for 4 rectangles is %0.4f.\n",four_sum)
fprintf("The Reimann sum for 8 rectangles is %0.4f.\n",eight_sum)
fprintf("The Reimann sum for 12 rectangles is %0.4f.\n",twelve_sum)
fprintf("The Reimann sum for 16 rectangles is %0.4f.\n",sixteen_sum)
disp(" ")
disp("There is indeed a difference in using different ")
disp("amount of rectangles in computing the Reimann sums. ")
disp("When you use more rectangles, the Reimann summation is")
disp("a better estimation of the area under the curve.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.5 – Displaying Integral

disp("Task 2.5 – Displaying Integral") 
disp(" ") 
disp("The integral of the function is " + integral(y,0,2))
disp(" ")
disp("This value is very similar to the approximations ")
disp("given by the Reimann sums, however, since it is the ")
disp("precise value of the area under the curve, it is ")
disp("slightly different from the approximations. The ")
disp("approximations made using more rectangles gave an ")
disp("answer that was closer to this actual value.")
disp("----------------------------------- ")