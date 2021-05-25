function [x,l] = MPI(A, tol, max_steps)
  steps = 0;
  n = length(A);
  prev_x = rand(n, 1);
  while(1)
    [Q, R] = Householder(A);
    x = SST(R, Q'*prev_x);
    x = x / norm(x);
    l = x' * A * x;
    err = norm(abs(x) - abs(prev_x));
    if(++steps == max_steps) || (err < tol)
      disp(steps);
      return;
    endif
    prev_x = x;
  endwhile
endfunction
