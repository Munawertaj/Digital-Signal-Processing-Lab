clc;
clear all;
close all;

## -------------------For taking Input from USER----------------
##  x = input("Enter the values of x: ");
##  h = input("Enter the values of h: ");
##  Input Format = [ 1, 2, 3, 1]


## ------------------For Sinwave------------------------
# fs = 100;
# n = 0: 1/fs: 1;
# x = 5*sin(2*pi*5*n);
# y = 7*sin(2*pi*3*n);

## ------------------For given Signal ------------------------
## Input Signal ------> x(n) = { 1, 2(->), 3, 1 }
## Impulse response --> h(n) = { 1, 2, 1, -1 }



#     -----  Code Starts from Here  ---------   #


x = [1, 2, 3, 1];
h = [1, 2, 1, -1];

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

z1 = 2 ;  # 0-th index of x (if it is n then put n+1)
z2 = 1 ;  # 0-th index of h (if it is n then put n+1)
index = z1+z2-1;  # 0-th index of ans

t = -(index-1):length(ans)-index; # time(n)

disp(ans);
stem(t,ans, '.' );
axis([-3 10 -3 10]);
#stem(t,ans, '.' , 'Linewidth' ,2)  --> for bold line;









