%Marc Dominic Cabote
%CECS 271 Fall 2018
close all; clear all; format compact; clc; %clear init
disp ('Task #3 -- Scripts and Functions in MATLAB');
str = datestr(now); fprintf('MATLAB time stamp: %s\n', str);
disp(' ');

%%
disp('Task 3.1');
sum = 0;
for i = 1:100
 sum = sum+((1)/(i^2));
end
fprintf('Sum = %f \n' ,sum);
disp(' ');

%%
clear all;
disp('Task 3.2');
sum = 0;
for i = 1:2:100
 sum = sum+((1)/(i^2));
end
fprintf('Sum = %f \n' ,sum);
disp(' ');

%%
clear all;
disp('Task 3.3');
maxN = 10
I(1) = f(1);
for N=2:maxN
 I(N) = I(N-1) + f(N);
end
fprintf('I = \n');
fprintf(' %f\n', I);
disp(' ');

%%
clear all;
disp('Task 3.4');
x = 0:pi/4:pi;
h = x.^2+1;
fprintf('h = \n');
fprintf(' %f\n', h);
disp(' ');

%%
clear all;
disp('Task 3.5');
v = 0.0:0.25:0.75;
cosx = zeros(size(v));
N = 10; range = 1:N;
ints = 2*range;
for n = range
cosx = cosx + (-1)^n*v.^ints(n)/factorial(ints(n));
end
fprintf('cosx = \n');
fprintf(' %f\n', cosx);
disp(' ');

%%
clear all;
disp('Task 3.6');
sum(1) = 1;
for n = 1:2000
 sum(n+1) = sum(n)+1/(n+1)^2;
end
fprintf('sum(n+1) = %f\n', sum(n+1));
disp(' ');

%%
clear all;
disp('Task 3.7');
for p = 1:4
 sum = 0;
 for j = 1:(p+1)
 sum = sum + j^p;
 end
 fprintf('sum p(%.0f) = %.0f\n', p, sum);
end
disp(' ');

%%
clear all;
disp('Task 3.8');
s1(1) = -1
for n = 1:1000
 s1(n+1) = s1(n)+(-1)^(n+1)/(n+1);
end
s2(1) = 1/2
for n = 1:1000
 s2(n+1) = s2(n)+1/((n+1)*(n+2));
end
fprintf('sum1(n+1) = %f\n', s1(n+1));
fprintf('sum2(n+1) = %f\n', s2(n+1));
disp(' ');

%%
disp('Task 3.10');
disp(' mod function tells us that the remainder when dividing by two');
disp('would always be zero as long as the numerator is an even number');
disp(' ');

%%
disp('Task 3.11');
clear all;
x = 7;
if tan(73*pi*x/4) >= 0
 x = 2;
else
 x = pi;
end
if floor(x) == x
 x = 10;
else
 x = 7;
end
if isprime(x)
 g = 'True';
 else
 g = 'False';
end
fprintf('%.0f is a Prime -> ', x);
disp(g);
disp(' ');

%%
clear all;
disp('Task 3.12');
start = 1/7;
x_n = mod(5*start,1)
while floor(x_n*7) ~= floor(start*7)
 x_n = mod(5*x_n,1)
end
disp(' ');

%%
clear all;
disp('Task 3.13');
n = 1:50;
h = n.^3-n.^2+40;
ii = find(h > 1000 & mod(n,3) ~= 0);
n(ii)

%%
clear all;
disp('Task 3.14');
s = 'abcdefghij'
n = 5
s(1:n)
disp(' ');

%%
clear all;
disp('Task 3.15');
msg = 'Input a letter and a digit ';
s = 'a4'
while ~isletter(s(1)) || ~isdigit(s(2))
 warning('This is not valid')
end
disp(' ');

%%
clear all;
disp('Task 3.16');
x = linspace(-3,5,100);
for i = 1:length(x)
if x(i) >= -1 && x(i) <= 1
 g(i) = x(i)^2;
elseif x(i)>1 && x(i) < 4
 g(i) = 1;
else
 g(i) = 0;
end
end
plot(x,g); grid on;
axis([-2 5 -1 2]);title('Task 3.16');xlabel('x');ylabel('g(x)');

%%
clear all;
disp ('Task 3.17');
x = -3:0.1:3;
g = cos(pi*x);
izero = find(abs(g)<=1e-15);
ii = find(abs(g)>=1e-15);
g(izero) = NaN;
g(ii) = 1./g(ii);
plot(x,g);grid on;

%%
clear all;
disp('Task 3.18');
x = linspace(-4,4);
N = length(x);
for j = 1:N
if x(j) >= 0 && x(j) <= 1
 g(j) = x(j);
elseif x(j) >= 1 && x(j) < 2
 g(j) = 2 - x(j);
else
 g(j) = 0;
end
end
fprintf('g(j) = %f',g(j));

%%
%3.3
function [value] = f(i)
value = sin(i*pi/2)/(i^2+1);
end
%3.14
function [val] = isletter(char)
lchar =lower(char(1));
if lchar>='a' && lchar <='z'
 val = 1;
else
 val = 0;
end
end
function [val] = isdigit(charac)
lchar = charac(1);
if lchar>='0' && lchar <='9'
 val = 1;
else
 val = 0;
end
end

