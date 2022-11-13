clc;
clear all;
close all;

## Unit sample sequence

point = 21;
u_sample = zeros(1,point);
u_sample(11) = 1;
n = -10:1:10;
subplot(3,3,1);
stem(n,u_sample, '.');
title('Unit Sample Sequence');

## Unit Step Sequence

point = 21;
u_step = ones(1,21);
for i = 1 : 1 : 10
  u_step(i)=0;
endfor
n = -10:1:10;
subplot(3,3,2);
stem(n,u_step,'.');
title('Unit Step Sequence');

## Unit Ramp Sequence

point=21;
u_ramp= zeros(1,21);
x=0;
for i=6:1:21
  u_ramp(i)=x++;
endfor
n=-5:1:15;
subplot(3,3,3);
stem(n,u_ramp,'.');
title('Unit Ramp Sequence');


## Exponential Sequence

point=20;
n= 0: point;
exp_seq=1.1.^(n);
subplot(3,3,4);
stem(n,exp_seq,'.');
title('Exponential Sequance --a^x ; a>1');

exp_seq=0.9.^(n);
subplot(3,3,5);
stem(n,exp_seq,'.');
title('Exponential Sequance --a^x ; a<1');

## Random Sequence

point = 21;
rand_seq= rand(1,point);
n=-10:1:10;
subplot(3,3,6);
stem(n,rand_seq,'.');
title('Random Sequence');


## Sine wave
a=5;
f=4;
t=0:.01:1;
sin_seq= a*sin(2*pi*f*t);
subplot(3,3,7);
plot(t,sin_seq);
title('Sine Wave');


## Cos wave
a=5;
f=4;
t=0:.01:1;
cos_seq= a*cos(2*pi*f*t);
subplot(3,3,8);
plot(t,cos_seq);
title('Cos Wave');


## Complex Sequence

t=0:.01:1;
com_seq= 5*sin(2*pi*3*t) + 3*cos(2*pi*7*t);
subplot(3,3,9);
plot(t,com_seq);
title('Complex Wave');




