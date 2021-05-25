function [value] = trapezoidal(f, a, b, n);
  h = (b - a) / n;
  x = a + h : h : b - h;
  y = f(x);
  value = h * ((f(a) + f(b))/2 + sum(y));
endfunction
