function [y] = rk4(df, a, b, y0, n)
  h = (b-a) / n;
  y = zeros(n + 1, 1);
  y(1) = y0;
  xi = 0;
  
  for i = 2 : n + 1
    xik = xi + h * (i-2);
    yk = y(i-1);
    k1 = h * df(xik, yk);
    k2 = h * df(xik + 1/2*h, yk + 1/2 * k1);
    k3 = h * df(xik + 1/2*h, yk + 1/2 * k2);
    k4 = h * df(xik + h, yk + k3);
    y(i) = yk +  1/6 * (k1 + 2 * k2 + 2 * k3 + k4);
  endfor
endfunction
