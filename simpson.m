function [value] = simpson(f, a, b, n)
  h = (b - a) / (2 * n);
  x = a + h : h : b - h;
  disp(x);
  y = f(x);
  value = h/3 * (f(a) + f(b) + 4 * sum(y(1 : 2 : 2*n - 1)) + 2 * sum(y(2 : 2 : 2*(n-1))));
endfunction
