clc;
clear all;
close all;

##  Given Sin wave x=12*sin(2*pi*5*t)

a = 12;
f = 5;
t = 0:0.001:1;


## Given Sin Wave

analog_signal = a*sin(2*pi*f*t);
subplot(2,2,1);
plot(t,analog_signal);
title('Analog Sin Wave');


## Sampling at Nyquist rate --> fs=2*f

fs = 2*f;
n = 0:1/fs:1;
nyquist_signal = a*sin(2*pi*f*n);
subplot(2,2,2);
stem(n,nyquist_signal,'.');
title('Sampled with Nyquist Rate');


## Under Sampling  --> fs < 2*f

fs = 1.5*f;
n = 0:1/fs:1;
under_sample = a*sin(2*pi*f*n);
subplot(2,2,3);
stem(n,under_sample,'.');
title('Under Sampling');


## Over Sampling  --> fs > 2*f

fs = 20*f;
n = 0:1/fs:1;
over_sample = a*sin(2*pi*f*n);
subplot(2,2,4);
stem(n,over_sample,'.');
title('Over Sampling');


