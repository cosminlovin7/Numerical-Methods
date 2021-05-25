function [X] = QRfd(A, max_steps)
  steps = 0;
  prev_A = hessenberg(A);
  while 1
    [Q,R] = Householder(prev_A);
    A = R * Q;
    if(diag(A) == diag(prev_A)) || (++steps == max_steps)
      X = A;
      disp(steps);
      break;
    endif
    prev_A = A;
  endwhile
endfunction
