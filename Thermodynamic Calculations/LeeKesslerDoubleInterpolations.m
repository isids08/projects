%% Manual Double Linear Interpolation of Lee-Kesler
clear
x = [0.8 0.9]; %Desired Pr table interval
y = [1.6 1.7]; %Desired Tr table interval
[X,Y]=meshgrid(x,y);
z=[0.9439 0.9373; 0.9563 0.9512];
k=interp2(X,Y,z,0.8207,1.6124,'linear');
fprintf('The interpolated z-value is %f.\n',k)

%% Automatic Double Linear Interpolation of Lee-Kesler
clear

w = input('w value?  '); %Enter acentric factor here

Pr = 8.0576/50.36; %Enter Pr Value
Tr = 536.56/282.4; %Enter Tr Value
% 
% P = 55.12 ; Pc = 220.48; Pr = P./Pc;
% T = 652.04041; Tc = 647.3; Tr = T./Tc;
% Finding z0
z0tab=table2array(readtable("Z0.csv"));
x0 = z0tab(1,2:end);
y0 = z0tab(2:end,1);
[X0,Y0]=meshgrid(x0,y0);
z0 = z0tab(2:end, 2:end);
k0=interp2(X0,Y0,z0,Pr,Tr,'linear');

% Finding z1
z1tab=table2array(readtable("Z1.csv"));
x_1 = z1tab(1,2:end);
y_1 = z1tab(2:end,1);
[X1,Y1]=meshgrid(x_1,y_1);
z1 = z1tab(2:end, 2:end);
k1 = interp2(X1,Y1,z1,Pr,Tr,'linear');

z = k0 + w*k1;
fprintf('The interpolated z-value is %f.\n',z)


%% Manual Single Interpolation 

% x1 = 280; % value below the desired value 
% x2 = 282; % given x value 
% x3 = 285; % value above the desired value
% 
% y1 = 0.001332; %below
%                       %finding the y2 value 
% y3 = 0.001348; %above
% 
% SingleInterpolatedValue = (((x2-x1).*(y3-y1))./(x3-x1)) + y1;

%  Enter in order : x1, y1, x2, x3, y3
y_2 = SingleInterpolation(80,112.68,87.8261,100,117.73);
fprintf("The interpolated value is %0.10f\n", y_2)

%% Manual Double Interpolation

% x1 - x value below the given x value
% xGiven - given x value 
% x2 - x value above the given x value 
% 
% y1 - y value below the given y value
% yGiven - given y value 
% y2 - y value above the given y value 

% Q11 - value on chart of corresponding to x1 y1 
% Q12 - value on chart of corresponding to x1 y2 
% Q21 - value on chart of corresponding to x2 y1 
% Q22 - value on chart of corresponding to x2 y2 

x_1 = 0.01;
y_1 = 0.6;

x_2 = 0.025;
y_2 = .65;

R_11 = -.027;
R_12 = -.068;
R_21 = -.023;
R_22 = -.058;

xGiven = 0.0107;
yGiven = 0.638;

P = R_11*((x_2-xGiven)*(y_2-yGiven))/((x_2-x_1)*(y_2-y_1)) + R_21*((xGiven-x_1)*(y_2-yGiven))/((x_2-x_1)*(y_2-y_1)) + R_12*((x_2-xGiven)*(yGiven-y_1))/((x_2-x_1)*(y_2-y_1)) + R_22*((xGiven-x_1)*(yGiven-y_1))/((x_2-x_1)*(y_2-y_1));

fprintf("The double interpolated value is %0.10f\n", P)

