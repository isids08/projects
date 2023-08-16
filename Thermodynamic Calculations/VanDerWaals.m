%The Newton Raphson Method
%% Cubic Constitutive Eqs (V d Waals) Solving for Molar Volume

close all;
clear all;
syms x; %molar volume
    P= 55.12; %ABSOLUTE pressure
    T= 573.15; %ABSOLUTE temp
    R= 8.314*10^-5; %gas constant, change with units
    Pc= 220.48; %Critical Pressure
    Tc= 647.3; %Critical Temperature
    
    a=(27/64)*((R*Tc)^2)/Pc;
    b=R*Tc/(8*Pc);
    
f=x^3-(b+R*T/P)*x^2+a*x/P-a*b/P; %Enter the Function here
g=diff(f); %The Derivative of the Function
n=input('Enter the number of decimal places:');
epsilon = 5*10^-(n+1);
x0 = input('Enter the intial approximation:');

for i=1:100
     f0=vpa(subs(f,x,x0)); %Calculating the value of function at x0
     f0_der=vpa(subs(g,x,x0)); %Calculating the value of function derivative at x0
  y=x0-f0/f0_der; % The Formula
err=abs(y-x0);
if err<epsilon %checking the amount of error at each iteration
break
end
x0=y;
end
y = y - rem(y,10^-n); %Displaying upto required decimal places
fprintf('The Molar Volume is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);


%% Solving for T in vdW

Pc = 220.48; % Critical Pressure
Tc = 647.3; % Critical Temperature
V = 0.90688; % Molar Volume
P = 55.12; % Absolute Pressure
R = 0.08314;
    
    a=(27/64)*((R*Tc)^2)/Pc;
    b=R*Tc/(8*Pc);

    T = ((P + a/V^2)*(V - b)) / R;
    
fprintf('The Absolute Temperature is : %f \n',T);


%% Solving for P in vdW

Pc = 46; % Critical Pressure
Tc = 190.6; % Critical Temperature
V = 0.02401; % Molar Volume
T = 285.9; % Absolute Temperature
R = 8.314 * 10^-5;

    a=(27/64)*((R*Tc)^2)/Pc;
    b=R*Tc/(8*Pc);
    
    P = (R*T)/(V-b) - a/(V^2);
    
fprintf('The Absolute Pressure is : %f \n',P);    
