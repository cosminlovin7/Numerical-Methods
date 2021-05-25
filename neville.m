function [P] = neville(x, y, point)
  P = [];
 
  n = length(x);
  disp(n);
  P = [P; y];
  k = 1;
  aux = n;
  for i = 2 : n
    k = 1;
    while k != aux
      P(i,k) = ((point - x(k + i - 1)) * P(i - 1, k) - (point - x(k)) * P(i - 1, k + 1))/(x(k) - x(k + i - 1));
      disp(x(k) - x(k + i - 1));
      disp(point - x(k));
      disp(P(i - 1, k));
      disp(point - x(k + i - 1));
      disp(P(i - 1, k + 1));
      disp("\n");
      k+=1;
    endwhile
    aux--;
  endfor
endfunction
