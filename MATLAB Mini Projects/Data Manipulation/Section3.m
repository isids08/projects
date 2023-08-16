  %% ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com
clc, close, clear
disp('ENGI 1331H Project 1 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com') 
disp(' ')
% Section 3 – Data Manipulation
disp("Section 3 – Data Manipulation")
disp(" ")
%% Task 0 - Adding Headers
disp("Task 1.0 - Adding Headers")
disp(" ")
disp("Added the appropriate headers ") 
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
%%  Task 1 

%Task 1.1 - Loading File
disp("Task 1.0 - Loading File")
disp(" ")
RidesMatrix = load("IndRides.txt");
disp("File Loaded ") 
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
% Task 1.2 - Counting Rides
disp("Task 1.2 - Counting Rides")
disp(" ")
Duration = RidesMatrix(:,1); 
SSID = RidesMatrix(:,2);
BikeID = RidesMatrix( :,3);
[nrow, ncol] = size(RidesMatrix);
disp("There were " + nrow + " trips taken on this day")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
% Task 1.3 - Avg Time
disp("Task 1.3 - Avg Time")
disp(" ")
fprintf("The average trip time is %0.2f seconds %0.2f \n", sum(Duration)/nrow)  % average = total seconds/total trips
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
% Task 1.4 - Shortest Trip ID
disp("Task 1.4 - Shortest Trip ID")
disp(" ")
[minDuration,minIndex] = min(Duration);
disp("The Bike with ID, " + BikeID(minIndex,1) + ", from station with ID, " + SSID(minIndex,1) + ", took the shortest trip.") 
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
% Task 1.5  - Matching ID to Minutes
disp("Task 1.5 - Matching ID to Minutes")
disp(" ")
ID = input("Enter a valid bike ID: ");
IDMatch = find(BikeID == ID);
fprintf("The number of minutes that the bike with ID, " + ID + ", was used is %0.2f\n", sum(Duration(IDMatch([1:size(IDMatch)],1),1))/60)
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause
%% Task 2

%2.1  - Matching ID to Minutes
disp("Task 2.1 - Load File")
disp(" ")
RideTimes = load("RideTimes.txt");
disp("File loaded")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause

% Task 2.2  - Plotting Figure
disp("Task 2.2 - Plotting Figure")
disp(" ")
Time = RideTimes(:,1);
NRides = RideTimes(:,2);
figure(300)
hold("on")
scatter(Time, NRides) %scatter plot
xlabel("Minute of the Day [M] (min)")
ylabel("Number of Rides [N] (#)")
title("Number of Rides vs Minutes of the Day")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause

% Task 2.3  - Interpreting Data
disp("Task 2.3 - Interpreting Data")
disp(" ")
disp("The graph of the data experiences near-parabolic behavior at two instances during the day")
disp("The graph peaks at two points during the day because many people use bikes to commute to and from ")
disp("work. Thus it makes sense for the peaks of the bike usage to be at hours where people go to work and ")
disp("when people come back from work.")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause

% Task 2.4  - Quadratic Representation
disp("Task 2.4 - Quadratic Representation")
disp(" ")
[Max_NRides_Value, Max_NRides_Index] = max(NRides);
plot([Time(Max_NRides_Index-3)]:.1:[Time(Max_NRides_Index+3)],polyval(polyfit(Time([Max_NRides_Index-3:1:Max_NRides_Index+3]),NRides([Max_NRides_Index-3:1:Max_NRides_Index+3]),2),[Time(Max_NRides_Index-3)]:.1:[Time(Max_NRides_Index+3)]),'m','LineWidth',3) %plotting the best fit
legend("Bike Rides", "Peak Fit")
disp("Press any key to continue"); 
disp("---------------------------------------------------")
pause

% Task 2.5  - Comparing Actual vs Theoretical Data
disp("Task 2.5  - Comparing Actual vs Theoretical Data")
disp(" ")
disp("During the hour between 8-8:59 AM, the actual bike ride amount is 199 rides,")
disp("whereas the quadratic predicts there to be close to 135 rides.")
disp("The difference between the actual and the theoretical data can be attributed")
disp("to the fact that the points adjacent to the peak were much lower than the peak.")
