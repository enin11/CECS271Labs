%Marc Dominic Cabote
%CECS 271 Fall 2018
close all; clear all; format compact; clc; %clear init
disp ('Task #2 -- Scripts and Functions in MATLAB');
str = datestr(now); fprintf('MATLAB time stamp: %s\n', str);
disp(' ');

%%
clear all;
a = 7;
b = 2;
res = mod(a,b);
str1 = 'The remainder is ';
str2 = ' when ' ;
str3 = ' is divided by ';
disp([str1 num2str(res) str2 ...
num2str(a) str3 num2str(b)]);
disp(' ');

%%
clear all;
a = 2;
b = 3;
res = a^b;
str1 = 'The answer is a^b ';
str2 = ' when ' ;
str3 = ' is raised to the power ';
disp([str1 num2str(res) str2 ...
num2str(a) str3 num2str(b)]);
disp(' ');

%%
clear all;
disp('y = 2^x');
x=[1,3,5,7,9]
y=f1(x)
disp(' ');

%%
clear all;
disp('a = x^2-y^2 ; b = sin(x+y):x=[0,2pi] , y=x');
x=0:pi/10:2*pi;
y=x;
a = f2(x,y);
b = f3(x,y);
disp([('a = '),num2str(a)]);
disp([('a = '),num2str(b)]);
disp(' ');

%%
clear all;
disp('a = sin(x); b=cos(x); c =sin(x) + cos(x)');
x = 1:5
a = f4(x);
b = f5(x);
c = f6(x);
disp([('a = '),num2str(a)]);
disp([('b = '),num2str(b)]);
disp([('c = '),num2str(c)]);
disp(' ');

%%
clear all;
disp('a = mod(x+y,1); b = mod(x+2y,1)');
x = 11
y = 2
a = f7(x,y);
b = f8(x,y);
disp([('a = '),num2str(a)]);
disp([('b = '),num2str(b)]);
disp(' ');

%%
clear all;
x = -4:1/4:6;
y = 3+3*x;
plot(x,y);grid on;

%%
disp('Using the quadratic formula, in ordet to have real roots');
disp('we require 1 -4a >= 0 so that 1/4>= a, and the quantity x^2');
disp('must be positive so sqrt(1-4a) > 1.');
disp(' ');

%%
clear all;
x = -1:0.1:1;
f = x+3;
g = x.^2+1;
fg = f.*g;
f_over_g = f./g; clf;
plot(x,[f; g; fg; f_over_g]); grid on;
legend('f','g','f*g','f/g');

%%
clear all;
%1
x = 4;
y = x+2;
z =1/(y^2*pi);
N = 5;sum = 0;
%2
for j = 1:N
 sum = sum + 1/j + 1/((j+2)*(j+3));
end
disp([('The answer is ') , num2str(sum)]);
%3
x = 0.0:0.1:1.0;
f = x.*cos(x)./((x.^2+1).*(x+2))
%4
w = ones(1,9);
w(1) = 1;
for j = 1:4
 w(2*j) = 3;
 w(2*j+1) = 2*j+1;
end
disp([('w = ') , num2str(w)]);
disp(' ');

%%
%(a)
clear all;
mph = 65;
yardsph = mph*1760;
inchph = yardsph*36;
cmph = inchph*2.54;
msph= cmph/100;
kmph = msph/1000;
disp(['Speed in mph is ', num2str(mph),' mi/h']);
disp(['Speed in yardsph is ', num2str(yardsph),' yd/h']);
disp(['Speed in inchph is ', num2str(inchph),' in/h']);
disp(['Speed in cmph is ', num2str(cmph),' cm/h']);
disp(['Speed in msph is ', num2str(msph),' m/h']);
disp(['Speed in kmph is ', num2str(kmph),' km/h']);
disp(' ');
%b
msps = 30;
cmps = msps*100;
inchps = cmps/2.54;
yardps = inchps/36;
mps = yardps/1760;
mph = mps * 3600;
disp(['Speed in msps is ', num2str(msps), ' m/s']);
disp(['Speed in cmps is ', num2str(cmps), ' cm/s']);
disp(['Speed in inchps is ', num2str(inchps), ' in/s']);
disp(['Speed in yardps is ', num2str(yardps),' yd/s']);
disp(['Speed in mps is ', num2str(mps), ' mi/s']);
disp(['Speed in mph is ', num2str(mph), ' mi/h']);
disp(' ');
%c
x = 80
f = f9(x);
disp(['Speed in mph using function is ', num2str(f), ' mi/h']);

%%
%2.3
function [out1] = f1(x)
out1 = 2.^x;
end
%2.4
function [out2] = f2(x,y)
out2 = x.^2 - y.^2;
end
function [out3] = f3(x,y)
out3 = sin(x+y);
end
%2.5
function [out4] = f4(x)
out4 = sin(x);
end
function [out5] = f5(x)
out5 = cos(x);
end
function [out6] = f6(x)
out6 = f4(x).^2 + f5(x).^2;
end
%2.6
function [out7] = f7(x,y)
out7 = mod(x+y,1);
end
function [out8] = f8(x,y)
out8 = mod(x+2*y,1);
end
%2.11
function [out9] = f9(x)
miph = x;
ydph = miph*1760;
inph = ydph*36;
cmph = inph*2.54;
msph = cmph/100;
kph = msph/1000;
out9 = kph;
end