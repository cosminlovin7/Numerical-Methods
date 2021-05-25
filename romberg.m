function [R] = romberg(f, a, b, n)
  prev_R = zeros(n + 1, 1);
  for i = 1 : n + 1
    prev_R(i) = trapezoidal(@f, a, b, 2^(i-1));
  endfor
  
  R = prev_R;
  
  for j = 1 : n
    R = zeros(length(prev_R) - 1, 1);
    for i = 2 : length(prev_R)
      R(i - 1) = prev_R(i) + (prev_R(i) - prev_R(i - 1))/(2^(2*j) - 1);
    endfor
    prev_R = R;
  endfor
endfunction
