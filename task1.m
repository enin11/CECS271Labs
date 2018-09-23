%Marc Dominic Cabote
%CECS 271 Fall 2018
close all; clear all; format compact; clc; %clear init
disp ('Task #1 -- Intro to MATLAB');
str = datestr(now); fprintf('MATLAB time stamp: %s\n', str);
disp(' ');
%% 
disp ('Task 1.1');
% a
x=1.3; p=x*x+3*x+1; fprintf(' (a) p(x=%4.2f)=%6.4f\n', x,p);
% b
x=(30)*(pi/180); q=sin(x); fprintf(' (b) q(x=%4.2f)=%6.4f\n', x,q);
% c
x=1; r=atan(x); fprintf(' (c) r(x=%4.2f)=%6.4f\n', x,r);
% d
x=sqrt(3)/2; s=sin(acos(x)); fprintf(' (d) s(x=%4.2f)=%6.4f\n\n', x,s);

%%
disp ('Task 1.2'); clear all;
x=[pi/3, pi/6]; y=abs(x).*sin(x.*x);
fprintf(' x = { '); fprintf('%6.4f ',x); fprintf('}\n');
fprintf(' y(x) = { '); fprintf('%6.4f ',y); fprintf('}\n\n');

%%
disp('Task 1.3'); clear all;
%sin, cos, tan
fprintf(' sin(pi/2)= '); fprintf('%6.4f', sin(pi/2)); fprintf('\n');
fprintf(' cos(pi/3)= '); fprintf('%6.4f', cos(pi/3)); fprintf('\n');
fprintf('tan(60*(180/pi))= '); fprintf('%6.4f', cos(pi/3));
fprintf('\n\n');
fprintf('f(x)=log(x+sqrt(x^2+1))\n');
fprintf('f(0.5) = %6.4f\n',log(0.5+sqrt(0.5^2+1)));
fprintf('f(1) = %6.4f\n\n',log(1+sqrt(1^2+1)));
fprintf('g(x) = x/((x^2+1)*sin(x))\n');
fprintf('g(0) = %6.4f\n',0/(((0^2)+1)*sin(0)));
fprintf('g(pi/4) = %6.4f\n\n', (pi/4)/((pi/4)^2+1)*sin(pi/4));

%%
disp('Task 1.4'); clear all;
x = [0.3 1/3 0.5 1/2 1.65 -1.34];
disp('Rounded values:');
round(x)
disp('Ceiling function:');
ceil(x)
disp('Floor Function:');
floor(x)
disp('Fix Function:');
fix(x)

%%
disp('Task 1.5'); clear all;
x = [3 4 5];
disp('Using y=4, we could show difference between mod and rem');
disp('Rem y = 4');
rem (x,4)
disp('Mod y = 4');
mod (x,4)
disp('Rem y = -4');
rem (x,-4)
disp('Mod y = -4');
mod (x,-4)
disp('We could see that mod takes takes sign into account');

%%
disp('Task 1.6'); clear all;
x = 1:0.1:2;
%1
y = x.^3+3*x.^2+1;
disp('1)');
fprintf(' %6.4f', y);
fprintf('\n');
%2
y = sin(x.^2);
disp('2)');
fprintf(' %6.4f', y);
fprintf('\n');
%3
y = (sin(x)).^2;
disp('3)');
fprintf(' %6.4f', y);

%%
disp('Task 1.7'); clear all;
x=3:0.01:5;
y = x./(x+1./x.^2);
fprintf(' %6.4f',y);
fprintf('\n\n');
fprintf('\n');
%4
y = sin(2*x)+x.*cos(4*x);
disp('4)');
fprintf(' %6.4f', y);
fprintf('\n');
%5
y = x./(x.^2+1);
disp('5)');
fprintf(' %6.4f', y);
fprintf('\n');
%6
y = cos(x)./(1+sin(x));
disp('6)');
fprintf(' %6.4f', y);
fprintf('\n');
%7
y = 1./x+x.^3./(x.^4+5*x.*sin(x));
disp('7)');
fprintf(' %6.4f', y);
fprintf('\n\n');

%%
disp('Task 1.8'); clear all;
x=-2:0.1:-1;
f=1./x;
y=f.^3+f.^2+3*f;
fprintf(' %6.4f',y);
fprintf('\n\n');

%%
disp('Task1.9'); clear all;
x = linspace(0,1,200);
g = x.^3+1;
h = x+2;
z = x.^2;
y = cos(x*pi);
f = y.*z./(g.*h);
fprintf('f(200)= %6.4f',f(200));
fprintf('\n\n');

%%
disp('1.10'); clear all;
x = linspace(-2,2,20);
c = [1 0 0 0 -1];
y = polyval;
plot(x,y)


%%
disp('1.11'); clear all;
x = 0:0.1:3;
f = x.^3.*cos(x+1);
% x = 2
fprintf('f(21)= %6.4f\n',f(21));
% x = 3
fprintf('f(end)= %6.4f\n',f(end));