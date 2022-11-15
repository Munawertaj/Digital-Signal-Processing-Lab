clc;
clear all;
close all;

x = [1, 2, 3, 1];
h = [1, 2, 1, -1];

hneg = flip(h);

z = [];

for i = 1:length(x)
  xh = hneg.*x(i);
  z = [z; xh];
endfor

[r c] = size(z);

ans = zeros(1, r+c-1);

for i = 1:r
  for j = 1:c
    ans(i+j-1) = ans(i+j-1) + z(i,j);
  endfor
endfor


#Display--

disp(ans);

n = -(length(h)-1):length(x)-1;
stem(n,ans,'.');


