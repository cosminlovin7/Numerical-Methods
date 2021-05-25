function [value] = trap_comp(f, a, b, n);
  aux = sort((b-a).*rand(n - 1,1) + a);
  x = [];
  %x = [x a aux' b];
  y = f(x);
  
  value = 0;
  
  for i = 1 : n
    value = value + 1/2 * (y(i + 1) + y(i))*(x(i + 1) - x(i));
  endfor
endfunction
