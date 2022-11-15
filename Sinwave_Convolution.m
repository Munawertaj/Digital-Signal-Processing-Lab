clc;
clear all;
close all;

fs = 200;
n = 0:1/fs:1;
h = 5*sin(2*pi*4*n);
x = 7*sin(2*pi*3*n);


z = [];

for i = 1: length(x)
   xh = h.*x(i);
   z = [z; xh];
endfor

[r c] = size(z);
ans = zeros(1, r+c-1);


# Performing Convolution

for i = 1:r
  for j = 1:c
      ans(i+j-1) = ans(i+j-1) + z(i,j);
  endfor
endfor

# Plot the input and output

z1 = 1 ;  # 0-th index of x (if it is n then put n+1)
z2 = 1 ;  # 0-th index of h (if it is n then put n+1)
index = z1+z2-1;  # 0-th index of ans

n = -(index-1):length(ans)-index; # time(n)

disp(ans);
plot(n,ans);
axis tight;









