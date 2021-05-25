function [x,lamda] = MPD(A, tol, max_steps)
  steps = 0;
  n = length(A);
  prev_x = rand(n, 1);
  while(1)
    x = A * prev_x;
    x = x / norm(x);
    lamda = x' * A * x;
    err = norm(x - prev_x);
    if(++steps == max_steps) || (err < tol)
      disp(steps);
      return;
    endif
    prev_x = x;
  endwhile
endfunction

   
    
    