function [X, l] = orthogonal_power_method(A, tol, max_steps)
  steps = 0;
  n = length(A);
  X = [];
  l = [];
  all_steps = 0;
  for i = 1 : n
    prev_x = rand(n,1);
    steps = 0;
    while 1
    suma = 0;
    for j = 1 : size(X,2);
      suma = suma + X(:,j)' * prev_x * X(:,j);
    endfor
    prev_x = prev_x - suma;
    x = A * prev_x;
    x = x / norm(x);
    lamda = x' * A * x;
    err = norm(abs(x) - abs(prev_x));
    if(++steps == max_steps) || (err < tol)
      all_steps = all_steps + steps;
      X = [X, x];
      l = [l, lamda];
      break;
    endif
    prev_x = x;
  endwhile
endfor
disp(all_steps);
endfunction