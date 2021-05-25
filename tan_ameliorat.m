function [y] = tan_ameliorat(a, b, n, y0, df)
  xi = 0;
  h = (b-a)/n;
  y = zeros(n + 1, 1);
  y(1) = y0;
  
  for i = 2 : n + 1
    xi1 = xi + h/2;
    yi1 = y(i-1) + h/2*df(xi,y(i-1));
    y(i) = y(i-1) + h*df(xi1,yi1);
    xi = xi1;
  endfor
endfunction
