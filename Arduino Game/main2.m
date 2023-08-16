%% ENGI 1331H Project 4 – Ibad Siddiqui – isiddiq5 – ibadsiddiqui03@gmail.com
clc, close, clear all
disp('ENGI 1331H Project 4 – Ibad Siddiqui – isiddiq5 – ibadsiddiqui03@gmail.com') 
disp(" ")
%% Section 2 – Playing Sound Files
% Task 2.0

disp("Task 2.0")
disp("Downloaded audio files successfully.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.1 

disp("Task 2.1")
[File1,fs1] = audioread("1.wav");
[File2,fs2] = audioread("2.wav");
[File3,fs3] = audioread("3.wav");
[File4,fs4] = audioread("4.wav");
[File5,fs5] = audioread("5.wav");
[File6,fs6] = audioread("6.wav");
[File7,fs7] = audioread("7.wav");
[File8,fs8] = audioread("8.wav");
[File9,fs9] = audioread("9.wav");
[File10,fs10] = audioread("10.wav");
[File11,fs11] = audioread("11.wav");
[File12,fs12] = audioread("12.wav");
playerObj1 = audioplayer(File1,fs1);
playerObj2 = audioplayer(File2,fs2);
playerObj3 = audioplayer(File3,fs3);
playerObj4 = audioplayer(File4,fs4);
playerObj5 = audioplayer(File5,fs5);
playerObj6 = audioplayer(File6,fs6);
playerObj7 = audioplayer(File7,fs7);
playerObj8 = audioplayer(File8,fs8);
playerObj9 = audioplayer(File9,fs9);
playerObj10 = audioplayer(File10,fs10);
playerObj11 = audioplayer(File11,fs11);
playerObj12 = audioplayer(File12,fs12);
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.2 

disp("Task 2.2")
play(playerObj1)
pause(1)
play(playerObj2)
pause(1)
play(playerObj3)
pause(1)
play(playerObj4)
pause(1)
play(playerObj5)
pause(1)
play(playerObj6)
pause(1)
play(playerObj7)
pause(1)
play(playerObj8)
pause(1)
play(playerObj9)
pause(1)
play(playerObj10)
pause(1)
play(playerObj11)
pause(1)
play(playerObj12)
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.3 

disp("Task 2.3")
Sounds = {playerObj12,playerObj11,playerObj10;
    playerObj9,playerObj8,playerObj7;
    playerObj6,playerObj5,playerObj4;
    playerObj3,playerObj2,playerObj1};
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.4 

disp("Task 2.4")
row = input("Enter a row number for the audio ");
if row < 1 || row > 4
    error("Enter a valid row number between 1 and 4");
end
col = input("Enter a column number of for the audio ");
if col < 1 || col > 3 
    error("Enter a valid column number between 1 and 3");
end
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.5

disp("Task 2.5")
playblocking(Sounds{row,col})
pause(2)
if row == 1 & col == 1
        playblocking(Sounds{row,col+1})
        pause(1)
        playblocking(Sounds{row,col})
elseif row == 4 & col == 3
        playblocking(Sounds{row,col})
        pause(1)
        playblocking(Sounds{row,col-1})
elseif col == 3
        playblocking(Sounds{row,col-1})
        pause(1)
        playblocking(Sounds{row+1,1})
elseif col == 1
        playblocking(Sounds{row-1,3})
        pause(1)
        playblocking(Sounds{row,col+1})
else
    playblocking(Sounds{row,col-1})
    pause(1)
    playblocking(Sounds{row,col+1})
end
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 2.6 

disp("Task 2.6")
OrderedSounds = {playerObj1,playerObj2,playerObj3;
    playerObj4,playerObj5,playerObj6;
    playerObj7,playerObj8,playerObj9;
    playerObj10,playerObj11,playerObj12};
Sound_sequence = readmatrix("sound_sequence.csv");
TOD = OrderedSounds';
[row,col] = size(Sound_sequence);
count = 0;
for i = 1:row
    for j = 1:col
        play(TOD{Sound_sequence(i,j)})
        pause(1)
    end
end
