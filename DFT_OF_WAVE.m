clc;
clear all;
close all;

#-----------Taking Input And stem it

fs = 40;
n = 0: 1/fs:1;
xinput = 5*sin(2*pi*6*n);
xlen = length(xinput);
n = 0:xlen-1;
subplot(2,2,1);
stem(n,xinput,'*');
title('Input Sequence');

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

#----------------Ploting magnitude

n = 0:point-1;
subplot(2,2,2);
plot(n, abs(xD));
axis tight;
title('Magnitude Spectrum');

#---------------Ploting phase

n = 0:point-1;
subplot(2,2,3);
plot(n, angle(xD));
axis tight;
title('Phase Spectrum');

#--------------Inverse DFT

for k = 0:point-1
   xID(k+1) = 0; # Since index starts from 1 so it is k+1
   for n = 0:point-1
     xID(k+1) = xID(k+1) + xD(n+1)*exp(i*2*pi*k*n/point);
   endfor
   xID(k+1) = xID(k+1)/point;
endfor

#------------- ploting Inverse DFT

n = 0:point-1;
subplot(2,2,4);
stem(n,xID,'*');
axis tight;
title('Inverse DFT');


