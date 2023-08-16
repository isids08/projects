 %% ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com
clc, clear, close all
disp('ENGI 1331H Project 3 – Ibad Siddiqui – 2053648 – ibadsiddiqui03@gmail.com ') 
disp("")
%% Section 1 – Image masking
disp(" ")
disp("Section 1 – Image Masking ") 
disp("--------------------------------------------- ")

%Task 1.0 – Adding Headers 

disp("Task 1.0 – Adding Headers ") 
disp(" ")
disp("Headers added. ")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 1.1 – Loading Images 

disp("Task 1.1 – Loading Images ") 
disp(" ")
Bob = imread("Bob.jpg");
disp("See Figure 101, Bob.") 
figure(101)
image(Bob)
title("Bob")
disp("Press any key to continue ")
pause
Library = imread("Library.jpg");
disp(" ")
disp("See figure 102, Library.")
figure(102)
image(Library)
title("Library")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 1.2 – Analyzing Size

disp("Task 1.2 – Analyzing Size ") 
disp(" ")
[Bob_nrow, Bob_ncol, Bob_dim] = size(Bob);
[Lib_nrow, Lib_ncol, Lib_dim] = size(Library);
disp("The picture Bob is " + Bob_nrow + " pixels by " + Bob_ncol + " pixels by " + Bob_dim + " dimensions.")
disp("The picture Library is " + Lib_nrow + " pixels by " + Lib_ncol + " pixels by " + Lib_dim + " dimesions.")
disp("It is important for image masking that the dimensions of both of these image be the same because we ")
disp("treat images like matrices. We cannot manipulate two matrices that are of differing dimensions.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 1.3 – Creating a mask

disp("Task 1.3 – Creating a mask ") 
disp(" ")
R_values = Bob(:,:,1);
G_values = Bob(:,:,2);
B_values = Bob(:,:,3);
mask_2 = R_values < 10 & G_values >245 & B_values < 10;
mask_3 = cat(3,mask_2,mask_2,mask_2);
disp("The threshold values that I used are R<10, G>245, and B<10.") 
disp("The task is complete.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 1.4 – Moving the mask

disp("Task 1.4 – Moving the mask ") 
disp(" ")
NewBob1 = Bob;
NewLibrary_R = Library;
NewBob1(mask_3) = NewLibrary_R(mask_3);
disp("See figure 104, Bob at the Library")
disp("Task Completed.")
figure(104)
image(NewBob1)
title("Bob at the Library")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%% Section 2 - Image Array Manipulation

disp(" ")
disp("Section 2 – Image Array Manipulation") 
disp("--------------------------------------------- ")

%Task 2.0 – Adding Headers

disp("Task 2.0 – Adding Headers ") 
disp(" ")
disp("Headers added. ")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 2.1 - Layer Separation

disp("Task 2.1 – Layer Separation ") 
disp(" ")
Bob_R_values = Bob(:,:,1);
Bob_G_values = Bob(:,:,2);
Bob_B_values = Bob(:,:,3);
Lib_R_values = Library(:,:,1);
Lib_G_values = Library(:,:,2);
Lib_B_values = Library(:,:,3);
Bob_RGB = [Bob_R_values,Bob_G_values,Bob_B_values];
Lib_RBG = [Lib_R_values,Lib_G_values,Lib_B_values];
disp("Task Completed.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

% Task 2.2 - Ghost Masks

disp("Task 2.2 – Ghost Masks ") 
disp(" ")
disp("See figure 202.")

figure(202)

subplot(2,2,1); % Top Left Corner
image(mask_3)
title("3D Mask Visualized")

subplot(2,2,2); % Top Right Corner

R_mask = Bob_R_values>0;
mask_4 = cat(1,R_mask);
NewBob1 = Bob_R_values;
NewLibrary_R = Lib_R_values;
NewLibrary_R(mask_4) = NewBob1(mask_4);
NewLibrary_R1 = cat(3,NewLibrary_R,Lib_G_values,Lib_B_values);
image(NewLibrary_R1)
title("UH Campus w/Red Bob Ghost")

subplot(2,2,3); % Bottom Left Corner

G_mask = Bob_G_values<245; % The background for the picture was green, so I would need to mask for something less than 254.
mask_5 = cat(1,G_mask);
NewBob2 = Bob_G_values;
NewLibrary_G = Lib_G_values;
NewLibrary_G(mask_5) = NewBob2(mask_5);
NewLibrary_G1 = cat(3,Lib_R_values,NewLibrary_G,Lib_B_values);
image(NewLibrary_G1)
title("UH Campus w/Green Bob Ghost")

subplot(2,2,4); % Bottom Right Corner

B_mask = Bob_B_values>0;
mask_6 = cat(1,B_mask);
NewBob3 = Bob_B_values;
NewLibrary_B = Lib_B_values;
NewLibrary_B(mask_6) = NewBob3(mask_6);
NewLibrary_B1 = cat(3,Lib_R_values,Lib_G_values,NewLibrary_B);
image(NewLibrary_B1)
title("UH Campus w/Blue Bob Ghost")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%% Section 3 - More Image Array Manipulation

disp(" ")
disp("Section 3 – More Image Array Manipulation") 
disp("--------------------------------------------- ")

%Task 3.0 – Adding Headers

disp("Task 3.0 – Adding Headers ") 
disp(" ")
disp("Headers added. ")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.1 - Loading and Displaying Rainbow Image

disp("Task 3.1 - Loading and Displaying Rainbow Image") 
disp(" ")
Rainbow = imread("Rainbow.jpg");
figure(301)
image(Rainbow)
title("Rainbow Image")
disp("The rainbow image has been loaded and displayed. ")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.2 - Displaying Size of Image

disp("Task 3.2 - Displaying Size of Image") 
disp(" ")
[nrow, ncol, dim] = size(Rainbow);
disp("The dimensions of the image are " + nrow + " pixels x " + ncol + " pixels x " + dim + " dimensions.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.3 - Rainbow Layer Separation

disp("Task 3.3 - Rainbow Layer Separation") 
disp(" ")
RB_R = Rainbow(:,:,1);
RB_G = Rainbow(:,:,2);
RB_B = Rainbow(:,:,3);
disp("The layers have been separated.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.4 - 2D Image and Layer Display

disp("Task 3.4 - 2D Image and Layer Display") 
disp(" ")

figure(304)

subplot(2,2,1);
image(Rainbow)
colorbar();
title("Original Image")

subplot(2,2,2);
image(RB_R)
colorbar();
title("Red Layered Image")

subplot(2,2,3);
image(RB_G)
colorbar();
title("Green Layered Image")

subplot(2,2,4);
image(RB_B)
colorbar();
title("Blue Layered Image")

disp("Figure 304 was displayed. ")
disp("")
disp("The images show the three different layers of the image separately.")
disp("The index of a particular point on the separated layers equals the ")
disp("respective RGB values in the main image. This image makes sense because ")
disp("whereever the original image has the most intensity of red, green or blue, the layers show ")
disp("that particular place as the brightest.")

disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.5 - 3D Image and Layer Display
disp("Task 3.5 -  3D Image and Layer Display") 
disp(" ")

[R_nrow,R_ncol] = size(RB_R);
[G_nrow,G_ncol] = size(RB_G);
[B_nrow,B_ncol] = size(RB_B);

figure(305)

subplot(2,2,1);
 
image(Rainbow)
title("Original Image");

subplot(2,2,2);

R_3D = cat(3,RB_R,zeros(G_nrow,G_ncol), zeros(B_nrow,B_ncol));
image(R_3D)
title("Red Image");

subplot(2,2,3);

G_3D = cat(3,zeros(R_nrow,R_ncol),RB_G,zeros(B_nrow,B_ncol));
image(G_3D)
title("Green Image");

subplot(2,2,4)

B_3D = cat(3,zeros(R_nrow,R_ncol),zeros(G_nrow,G_ncol),RB_B);
image(B_3D)
title("Blue Image");

disp("Figure 305 is displayed.");
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.6 - Added Subtracted Display
disp("Task 3.6 - Added Subtracted Display") 
disp(" ")
AddedInput = input("Enter a value (between 0 and 255) to add to the RGB values: ");
SubtractedInput = input("Enter a value (between 0 and 255) to subtract from the RGB values: ");

figure(306)

subplot(3,3,1);

image(Rainbow)
title("Original Image");

subplot(3,3,5);

AddedImage = cat(3, RB_R + AddedInput, RB_G + AddedInput, RB_B + AddedInput);
image(AddedImage)
title("Added Value");

subplot(3,3,9);

SubtractedImage = cat(3, RB_R - SubtractedInput, RB_G - SubtractedInput, RB_B - SubtractedInput);
image(SubtractedImage)
title("Subtracted Value");

disp(" ")
disp("Figure 306 was displayed.")
disp(" ")
disp("The added value image shows a lighter image than the original image because ") 
disp("by adding on to the RGB values, we create a color that is closer to one with ")
disp("all RGB values being 255 (white). On the contrary, the subtracted image shows a ")
disp("darker image than the original because subtracting from all RGB values will ")
disp("bring the RGB values in the image closer a color with all RGB values being 0 (black).")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 3.7 - Identifying Purple Algorithm
disp("Task 3.7 - Identifying Purple Algorithm") 
disp(" ")
whiteMask = RB_R >= 95 & RB_R <=190 & RB_G >= 25 & RB_G <= 50 & RB_B <= 150 & RB_B >= 105;
RB_R(whiteMask) = 255;
RB_G(whiteMask) = 255;
RB_B(whiteMask) = 255;
MaskedImage = cat(3,RB_R,RB_G,RB_B);
figure(307)
image(MaskedImage)
title("Rainbow With Purple Removed")
disp(" ")
disp("Figure 307 is displayed.")
disp(" ")
disp("My criteria for identifying purple values was to use DataTips on the image and identify")
disp("the lowest and highest RGB values. I checked the pixels closer to the blue lines and ones ") 
disp("that were towards the edge of each individual circle to identify the minimum and pixels ")
disp("closer to the red lines and towards the middle of each individual ciricle to identify ")
disp("the maximum.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%% Section 4 - Data Masking With User Defined Functions

disp(" ")
disp("Section 4 - Data Masking With User Defined Functions") 
disp("--------------------------------------------- ")

%Task 4.0 – Adding Headers

disp("Task 4.0 – Adding Headers ") 
disp(" ")
disp("Headers added. ")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 4.1 - Loading Data
disp("Task 4.1 – Loading Data ") 
disp(" ")
followers = readmatrix('followers.xlsx');
likes = readmatrix('likes.xlsx');
reach = readmatrix('reach.xlsx');
disp("The files are loaded.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 4.2 - Displaying and Explaining Size
disp("Task 4.2 - Displaying and Explaining Size") 
disp(" ")
[Likes_nrow,Likes_ncol] = size(likes);
[Followers_nrow,Followers_ncol] = size(followers);
[Reach_nrow,Reach_ncol] = size(reach);
disp("The likes dataset has " + Likes_nrow + " rows and " + Likes_ncol + " columns.")
disp("The reach dataset has " + Reach_nrow + " rows and " + Reach_ncol + " columns.")
disp("The followers dataset has " + Followers_nrow + " rows and " + Followers_ncol + " columns.")
disp("In each dataset, each column represents a day of the week, and each row represents one week in the month.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 4.3 - Average Likes and Reach
disp("Task 4.3 - Average Likes and Reach") 
disp(" ")
AvgLikes_W1 = sum(likes(1,:))/Likes_ncol;
AvgLikes_W4 = sum(likes(4,:))/Likes_ncol;
AvgReach_W1 = sum(reach(1,:))/Reach_ncol;
AvgReach_W4 = sum(reach(4,:))/Reach_ncol;
disp("The average likes for week 1 and 4 are " + AvgLikes_W1 + " likes and " + AvgLikes_W4 + " likes respectively.")
disp("The average reach for week 1 and 4 are " + AvgReach_W1 + " likes and " + AvgReach_W4 + " likes respectively.")
PercentV2L_W1 = sum(likes(1,:))/sum(reach(1,:)) * 100;
PercentV2L_W4 = sum(likes(4,:))/sum(reach(4,:)) * 100;
fprintf("The percent of views that turn into likes for week 1 and 4 are %.1f%% likes per view and %.1f%% likes per view respectively. \n",PercentV2L_W1,PercentV2L_W4)
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 4.4 - User Defined Function
disp("Task 4.4 - User Defined Function") 
disp(" ")
disp("User Defined Function Created Successfully.")
[IncreasedReachValues, IncreasedLikesValues, IncreasedFollowersValue] = DaysThatMetricsIncreased(reach,likes,followers);
disp("The number of times the reach, likes, and followers increased are " + IncreasedReachValues + ", " + IncreasedLikesValues + ", and " + IncreasedFollowersValue + " respectively.")
disp("Press any key to continue ")
disp("----------------------------------- ")
pause

%Task 4.5 - Best Day
disp("Task 4.5 - Best Day") 
disp(" ")
ReachMask = reach>105;
nDays = sum(sum(ReachMask));
disp("There were " + nDays + " days were the reach was greater than 105 views.")
[Day_With_Most_Views, index] = max(sum(ReachMask));
DaysOfWeek = ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"];
disp("The day with the most greater than 105 views was " + DaysOfWeek(index) + ".")
