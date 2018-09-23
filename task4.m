%% TASK #4

%Marc Dominic Cabote
%CECS 271 Fall 2018

close all; clear all; format compact; clc; %clear init
disp ('Task #4 -- Root Finding');
str = datestr(now); fprintf('MATLAB time stamp: %s\n', str);
disp(' ');

%% Task 4.1
%Modified testplotm.m
x = 0:0.01:10;
y = x.*sin(x);
disp('Click the mouse near the zero')
disp('and when you have finished press')
disp('the return key')
plot(x,y)
grid on
zoom on
[xvalues,yvalues] = ginput;
[yy,ii] = min(abs(yvalues));
fprintf("x = %f, y= %f\n",xvalues(ii),yvalues(ii));

%% Tasks 4.2
clf;
x = 0:0.001:0.5;
y = cosh(x);
disp('Click the mouse near the zero')
disp('and when you have finished press')
disp('the return key')
plot(x,y)
grid on 
zoom on
[xvalues,yvalues] = ginput;
[yy,ii] = min(abs(yvalues));
fprintf("x = %f, y= %f\n",xvalues(ii),yvalues(ii));

clf;
x = 0:0.01:1;
y = sinh(x);
disp('Click the mouse near the zero')
disp('and when you have finished press')
disp('the return key')
plot(x,y)
grid on 
zoom on
[xvalues,yvalues] = ginput;
[yy,ii] = min(abs(yvalues));
fprintf("x = %f, y= %f\n",xvalues(ii),yvalues(ii));

%% Task 4.3
B = 12
x = -10:0.1:10;
f = x.^2+B*x+1;
plot(x,f); grid on;

%% Task 4.4
B1 =0;
B2 =1;
theta1 = asin(B1/(sqrt(1+B1^2)));
theta2 = asin(B2/(sqrt(1+B2^2)));

fprintf("if B = %.0f, theta = %.2f degrees\n",B1, theta1*180/pi); 
fprintf("if B = %.0f, theta = %.2f degrees\n",B2, theta2*180/pi); 
disp(' ');

%% Task 4.5
n = -2*pi:pi/2:2*pi;
g = eqn(n);
fprintf("when x is %f, root is %f\n",n,g);
disp(' ');

%% Task 4.6
x = -1;
g = eqn2(x);
fprintf("when x is %.2f, root is %.2f\n",x,g);
disp(' ');

%% Task 4.7
global tolerance maxits
tolerance = 1e-4;
xlower = 1; xupper = 3;
maxits = 30;
[root,iflag] = bisect('func',xlower,xupper);
switch iflag
case -1
disp('Root finding failed')
case -2
disp('Initial range does not only contain one root')
otherwise
disp([' Root = ' num2str(root) ...
' found in ' num2str(iflag) ' iterations' ' ' 'with tolerance ' ...
 num2str(tolerance)])
end

%% Task 4.8
fprintf('function has three roots, we will see that pi/6 is smaller\n');
fprintf('than the tolerance. To find the other two, we could adjust\n');
fprintf('the upper and lower ranges.\n');
disp(' ');

%% Task 4.9
disp('function 1');
x = 4.41;
tolerance = 1e-8;
iterations = 0;
while ((iterations<30) & (abs(func1(x)))>tolerance)
    x = x-func1(x)/func1_prime(x);
    iterations = iterations + 1;
end
if iterations==30
    disp('No root found')
else
    disp([' Root = ' num2str(x,10) ' found in ' ...
    int2str(iterations) ' iterations.'])
end
disp(' ');
disp('function 2');
x = 1;
tolerance = 1e-8;
iterations = 0;
while ((iterations<30) & (abs(func2(x)))>tolerance)
    x = x-func2(x)/func2_prime(x);
    iterations = iterations + 1;
end
if iterations==30
    disp('No root found')
else
    disp([' Root = ' num2str(x,10) ' found in ' ...
    int2str(iterations) ' iterations.'])
end

%% Task 4.10

x0 = 0.8;
x1 = 1.3;
x2 = x0;
tol = 1e-8;
iters = 0;
while ((iters<30) & (abs(func3(x2))>tol))|(iters==0)
    iters = iters+1;
    f0 = func3(x0);
    f1 = func3(x1);
    x2 = x0-f0*(x1-x0)/(f1-f0);
    if func3(x2)*f0 < 0
        x1 = x2;
    else
        x0 = x2;
    end
end
if iters==30
    disp('No root found')
else
    disp([' Root = ' num2str(x2,10) ' found in ' ...
    num2str(iters) ' iters.'])
end

%% Task 4.11
x =1.1;
for its=1:20
    [f,fp,fpp] = fun2(x);
    h1 = (-fp+sqrt(fp^2-2*f*fpp))/(2*fpp);
    h2 = (-fp-sqrt(fp^2-2*f*fpp))/(2*fpp);
    [f1,f1p,f1pp] = fun2(x+h1);
    [f2,f2p,f2pp] = fun2(x+h2);

    if abs(f1)<abs(f2)
        x = x+h1
    else
        x = x+h2
    end
end

%% Task 4.12
x= roots ([1 1 1 1])
y = roots([1 0 0 1 -2 -4])

%% Task 4.13
func4 = @(x) ( x.*sin(x)+cos(x));
fzero(func4,3)

%% Task 4.14
func5 = @(x) (besselj(1/2,x));
fzero(func5,3)

%% Task 4.15
func6 = @(in1) (in1.*sin(in1)-in1.^2.*cos(in1)-1);
func7 = @(in2) (1+in2.^2).*sin(in2)-in2.*cos(in2);

x = 0;
for j = 1:10
    x = x-func6(x)/func7(x);
    fprintf('x = %f\n',x);
end

%% task 4 functions
function [val] = userfn(x, par1,par2)
    val = x-par1*sin(x.^par2);
end
% eqn.m from p 112
function [g] = eqn(x)
    g=acos(sin(x)/2);
    %g= sqrt(abs(asin(x/2)));
end

function g = eqn2(x)
    b = 3;
    g = -(x^2+1)/b;
end

function [f] = func(x)
    f = 2*x.^2-x.^3+sin(x);
end


function [answer,iflag] = bisect(fun,a,b)
global tolerance maxits
iflag = 0;
iterations=0;
f_a = feval(fun,a);
f_b = feval(fun,b);
while ((f_a*f_b<0) & iterations<maxits) & (b-a)>tolerance
iterations = iterations+1;
c = (b+a)/2;
f_c = feval(fun,c);
if f_c*f_a<0
b=c; f_b = f_c;
elseif f_b*f_c<0
a=c; f_a = f_c;
else
iflag = 1; answer = c;
end
end
switch iterations
case maxits
iflag = -1; answer = NaN;
case 0
iflag = -2; answer = NaN;
otherwise
iflag = iterations; answer = c;
end
end

%4.9
function [f] = func1(x)
    f= x.*cos(x)-sin(x);
end

function [fp] = func1_prime(x)
    fp = -x.*sin(x);
end

function [f] = func2(x)
    f= (x.^3-x).*sin(x);
end

function [fp] = func2_prime(x)
    fp = (3*x.^2-1).*sin(x)+(x.^3-x).*cos(x);
end

function newton_rhapsom(x,funcx,funcxprime)
%
% Newton_Raphson.m
%

tolerance = 1e-8;
iterations = 0;
while ((iterations<30) & (abs(funcx))>tolerance)
    x = x-funcx/funcxprime;
    iterations = iterations + 1;
end
if iterations==30
    disp('No root found')
else
    disp([' Root = ' num2str(x,10) ' found in ' ...
    int2str(iterations) ' iterations.'])
end
end

%4.10
function [f] = func3(x)
    f = sin(x-x^3);
end

%4.11
function [f,fp,fpp] =fun2(x)
    f = x.^3-4*x.^2+5*x+2;
    fp = 3*x.^2-8*x+5;
    fpp = 6*x.^2-8;
end


