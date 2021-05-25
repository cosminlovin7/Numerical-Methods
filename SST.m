function [x] = SST(A, b)
  %Rezolvarea unui sistem de tip superior triunghiular:
  [l c]  = size(A);
  l = min(l , c);
  x = zeros(l,1);
  for i = l : -1 : 1
    if(A(i,i) != 0)
      x(i) = (b(i) - A(i,i + 1 : l) * x(i + 1 : l)) / A(i,i);
    endif
    
  endfor
end
    