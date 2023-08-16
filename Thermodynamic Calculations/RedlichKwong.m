%%  Eq Solving for Z with Redlich-Kwong
close all;
clear all;
syms x; %z value
    P=22.137*10^5; %ABSOLUTE pressure
    T=366.48; %ABSOLUTE temp
    R=8.314; %gas constant, change with units
    Pc=42.44*10^5; %Critical Pressure
    Tc=370; %Critical Temperature
    Zc=0.276; %Z Value
    
    Vc=Zc*R*Tc/Pc;
    a=(0.4278/(Zc))*R*Vc*Tc^1.5;
    b=(0.0867/(Zc))*Vc;
    Pr=P/Pc;
    Tr=T/Tc;
    Bv=b-a/(Tr^1.5);
    Cv=b*(b+a/(Tr^1.5));
    Dv=b^2*Bv;
    Vv=Zc*R*T/Pc;
    phi=P*Vv/(R*T);
    
f=x-1-(Bv*phi/x)-(Cv*phi^2/x^2)-(Dv*phi^3/x^3); %Enter the Function here
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
fprintf('The Z-Value is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);

%%  Eq Solving for Molar Volume with Redlich-Kwong
close all;
clear all;
syms x; %z value
    P=55.12; %ABSOLUTE pressure (bar)
    T=573.15; %ABSOLUTE temp
    R=8.314*10^-5; %gas constant, change with units
    Pc=220.48; %Critical Pressure
    Tc=647.3; %Critical Temperature
    Zc=0.229; %Critical Z Value
    
    Vc=Zc*R*Tc/Pc;
    a=(0.4278/(Zc))*R*Vc*Tc^1.5;
    b=(0.0867/(Zc))*Vc;
    Pr=P/Pc;
    Tr=T/Tc;
    Bv=b-a/(Tr^1.5);
    Cv=b*(b+a/(Tr^1.5));
    Dv=b^2*Bv;
    Vv=Zc*R*T/Pc;
    phi=P*Vv/(R*T);
    AA=R*T/P;
    BB=(a/(T^0.5*P))-(R*T*b)/P-b^2;
    CC=a*b/(T^0.5*P);
    
f=x^3-AA*x^2+BB*x-CC; %Enter the Function here
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

%% Solving for Temperature With Redlich-Kwong
close all
clear all
syms x; %z value
    P= 55.12; %ABSOLUTE pressure
    R= 0.08314; % gas constant, change with units
    V = 0.00090688; % molar volume 
    Pc= 220.48; %Critical Pressure
    Tc= 647.3; %Critical Temperature
    Zc=0.229; %Critical Z Value
    
    Vc=Zc*R*Tc/Pc;
    a=(0.4278/(Zc))*R*Vc*Tc^1.5;
    b=(0.0867/(Zc))*Vc;
    Pr=P/Pc;
    
f=(R.*x)/(V-b) - a/((x.^(1/2)*V)*(V+b)) - P; %Enter the Function here
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
fprintf('The Absolute Temperature is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);

%% Solving for P in Redlich Kwong
close all;
clear all;
    T=573.15; %ABSOLUTE temp
    R=8.314*10^-5; %gas constant, change with units
    Pc=4; %Critical Pressure
    Tc=370; %Critical Temperature
    Zc=0.276; %Z Value
    V = 0.001376; % Molar Volume
    
    Vc=Zc*R*Tc/Pc;
    a=(0.4278/(Zc))*R*Vc*Tc^1.5;
    b=(0.0867/(Zc))*Vc;
    
    P = (R*T)/(V-b) - a/(T^(1/2)*V*(V+b));
fprintf('The Absolute pressure is : %f \n',P);
