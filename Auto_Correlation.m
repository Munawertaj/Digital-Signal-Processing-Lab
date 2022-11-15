clc;
clear all;
close all;

x = [1 3 2 4];
xneg = flip(x);

z = [];

for i = 1:length(x)
  temp = xneg.*x(i);
  z = [z; temp];
endfor

[r c] = size(z);

ans = zeros(1, r+c-1);

for i = 1:r
  for j = 1:c
    ans(i+j-1) = ans(i+j-1) + z(i,j);
  endfor
endfor

# Display
disp(ans);

n = -(length(xneg)-1):length(x)-1;
stem(n,ans);
axis([-4 4 -10 40]);

