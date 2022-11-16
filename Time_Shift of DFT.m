clc;
clear all;
close all;

#-----------Taking Input And stem it

#fs = 40;
#n = 0: 1/fs:1;
#xinput = 5*sin(2*pi*6*n);

xinput = [ 1 2 3 4 5 6 7];
xlen = length(xinput);
n = 0:xlen-1;
subplot(2,1,1);
stem(n,xinput,'*');
title('Input Sequence');
#axis([-1 7 -1 8]);

#--------------DFT

point = xlen; # How many point DFT

if(point < xlen)
  error(" Can't perform DFT");
endif

xinput = [xinput, zeros(1,point-xlen)];

for k = 0:point-1
   xD(k+1) = 0; # Since index starts from 1 so it is k+1
   for n = 0:point-1
     xD(k+1) = xD(k+1) + xinput(n+1)*exp(-i*2*pi*k*n/point);
   endfor
endfor



# Time Shifting property
##Step-01
m = 2;
for k=0:point-1
  xD(k+1) = xD(k+1)*exp(-i*2*pi*m*k/point);
endfor


##Step-02
#--------------Inverse DFT

for k = 0:point-1
   xID(k+1) = 0; # Since index starts from 1 so it is k+1
   for n = 0:point-1
     xID(k+1) = xID(k+1) + xD(n+1)*exp(i*2*pi*k*n/point);
   endfor
   xID(k+1) = xID(k+1)/point;
endfor

#----- ploting Inverse DFT and we will get time shift of the input

n = 0:point-1;
subplot(2,1,2);
stem(n,xID,'*');
axis tight;
title('Time shift by 2');


