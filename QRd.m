function [X] = QRd(A, tol, max_steps, lamda)
  prev_A = A;
  steps = 0;
  n = length(A);
  while 1
    [Q,R] = Householder(prev_A - lamda * eye(n));
    A = R * Q + lamda * eye(n);
    err = norm(diag(prev_A) - diag(A));
    if(err < tol) || (++steps == max_steps)
      disp(steps);
      X = A;
      break;
    endif
    prev_A = A;
  endwhile
endfunction
