function [X,l] = iterare_ortogonala(A, tol, max_steps)
  n = length(A);
  prev_U = rand(n,n);
  steps = 0;
  while 1
    [Q,R] = Householder(prev_U);
    U = A * Q;
    err = norm(abs(U) - abs(prev_U));
    if(++steps == max_steps) || (err < tol)
      disp(steps);
      break;
    endif
    prev_U = U;
  endwhile
  [X,l] = Householder(U);
  l = X' * A * X;
endfunction
