clc;
clear all;
close all;

## Given Sequence x=26*sin(2*pi*5*t)

a= 26;
f= 5;
t= 0:0.001:1;


## Given Analog Signal

analog_signal = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,analog_signal,'r');
grid on;
title('Continous Analog Signal');


## Sampling

fs = 50*f;
n = 0:1/fs:1;
sampled_signal = a*sin(2*pi*f*n);
subplot(3,1,2);
stem(n,sampled_signal,'.');
hold on;
plot(t,analog_signal,'r');
grid on;
title('Sampled signal');


## Quantization

bits = 3;
aMin = min(sampled_signal);
aMax = max(sampled_signal);
step = (aMax-aMin)/(2^bits);
quantized_signal = round(sampled_signal/step)*step;
subplot(3,1,3);
plot(n,quantized_signal);
hold on;
plot(t,analog_signal);
grid on;
title('Quantized Signal');




