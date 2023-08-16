%% ENGI 1331H Project 4 – Ibad Siddiqui – isiddiq5 – ibadsiddiqui03@gmail.com
clc, close, clear all
disp('ENGI 1331H Project 4 – Ibad Siddiqui – isiddiq5 – ibadsiddiqui03@gmail.com') 
disp(" ")
%% Section 3 – Programming the Arduino

% Task 3.0

disp("Task 3.0")
disp("Headers added successfully.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.1

disp("Task 3.1")
a = arduino();
Pins = ["D13", "D12", "D11";
    "D10", "D9", "D8";
    "D7", "D6", "D5";
    "D4", "D3", "D2"];
Board = zeros(4,3);
UpdateBoard(a,Board,Pins)
disp("Task 3.1 is completed")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.2

disp("Task 3.2")
UpdateBoard(a,Board,Pins)
disp("Task 3.2 is completed")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.3

disp("Task 3.3")
for i = 1:3
    Board = ones(4,3);
    UpdateBoard(a,Board,Pins)
    pause(1)
    Board = zeros(4,3);
    UpdateBoard(a,Board,Pins)
    pause(1)
end

disp("Task 3.3 is completed")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.4

disp("Task 3.4")
row = input("Enter a row number for the light ");
if row < 1 || row > 4
    error("Enter a valid row number between 1 and 4");
end
col = input("Enter a column number of for the light ");
if col < 1 || col > 3 
    error("Enter a valid column number between 1 and 3");
end

Board(row,col) = 1;
UpdateBoard(a,Board,Pins)
pause(2)
Board = ones(4,3);
UpdateBoard(a,Board,Pins)
pause(2)
Board = zeros(4,3);
UpdateBoard(a,Board,Pins)

disp("Task 3.4 is completed.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.5

disp("Task 3.5")
Light_Sequence = readmatrix("light_sequence.csv");
[Lrow,Lcol] = size(Light_Sequence);
OrderedPins = ["D2", "D3", "D4";
    "D5", "D6", "D7";
    "D8","D9","D10";
    "D11","D12","D13"];
TransposedPins = OrderedPins';
BoardP = transpose(Board);
transpose(BoardP);
for j = 1:Lrow
    for i = 1:Lcol
        BoardP(abs(Light_Sequence(j,i)-14)) = 1;   
%         Pins(i,j) = TransposedPins(Light_Sequence(i,j)-1);
        UpdateBoard(a,BoardP,transpose(Pins))
        pause(2)
        
    end
end

Board = zeros(4,3);
UpdateBoard(a,Board,Pins)

disp("Task 3.5 is completed")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.6 

disp("Task 3.6")
round = 0;
for i = 1:5
    round = round + 1;
    disp("This is round " + round + ".")
    RandLight(a,Board,Pins)
    pause(2)
    Board = zeros(4,3);
    UpdateBoard(a,Board,Pins)
    pause(1)
end

disp("Task 3.6 is completed")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 3.7 

disp("Task 3.7") 
disp("The size of the matrix is 4 by 3.") 
UserRow = input("Enter a row number in the matrix: ");
UserCol = input("Enter a column number in the matrix: ");
if UserRow == 2 & UserCol == 2
    pause(2)
    Board(UserRow-1 : UserRow+1,UserCol) = 1;
    Board(UserRow, UserCol-1:UserCol+1) = 1;
    UpdateBoard(a,Board,Pins)
elseif UserRow == 3 & UserCol == 2
    pause(2)
    Board(UserRow-1 : UserRow+1,UserCol) = 1;
    Board(UserRow, UserCol-1:UserCol+1) = 1;
    UpdateBoard(a,Board,Pins)
else
    Board(UserRow,UserCol) = 1;
    UpdateBoard(a,Board,Pins)
end
pause(2)
Board = zeros(4,3);
UpdateBoard(a,Board,Pins)
disp("Task 3.7 is completed")
disp("----------------------------------- ")  
