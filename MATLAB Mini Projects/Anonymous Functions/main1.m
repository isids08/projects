%% ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – isiddiq5@cougarnet.uh.edu
clc, close, clear
disp('ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – isiddiq5@cougarnet.uh.edu') 
disp(" ")
%% Section 1 – Image Masking with Loops
disp("Section 1 – Image Masking with Loops") 
disp("--------------------------------------------- ")
disp(" ")

% Task 1.0 – Adding Headers 

disp("Task 1.0 – Adding Headers") 
disp(" ")
disp("Headers Added")
disp("Press any key to continue")
disp("----------------------------------- ")
pause


% Task 1.1 – Loading Images

disp("Task 1.1 – Loading Images") 
disp(" ")
Zoo = imread("zoo.jpg");
Elephant = imread("elephant.jpg");
figure(101)
subplot(1,2,1)
image(Zoo)
title("Zoo.jpg")
subplot(1,2,2)
image(Elephant)
title("Elephant.jpg")
disp("Images loaded and displayed successfully in figure 101.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 1.2 – Displaying Size

disp("Task 1.2 - Displaying Size") 
disp(" ")
[Elephant_r, Elephant_c, Elephant_dim] = size(Elephant);
[Zoo_r, Zoo_c, Zoo_dim] = size(Zoo);
disp("The Elephant image is " + Elephant_r + " by " + Elephant_c + " by " + Elephant_dim + " pixels.")
disp("The Zoo image is " + Zoo_r + " by " + Zoo_c + " by " + Zoo_dim + " pixels.")
disp("Press any key to continue")
disp("----------------------------------- ")
pause

% Task 1.3 – Masking With Loops

disp("Task 1.3 – Masking With Loops") 
disp(" ")
Elephant_red = Elephant(:,:,1);
Elephant_green = Elephant(:,:,2); 
Elephant_blue = Elephant(:,:,3);
for r = 1:Elephant_r
    for c = 1:Elephant_c
        if(Elephant_green(r,c) >= 200)
            Elephant(r,c,1:3) = Zoo(r,c,1:3);
        end
    end
end
figure(103)
image(Elephant)
title("New Elephant in Zoo")
disp("Figure 103 has been displayed.")
disp("----------------------------------- ")
pause
        
       

